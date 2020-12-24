# Aabacus.Azeroth@gmail.com
#
package require Tcl 8.5
package provide aabacus 0.1


# Use this to get which version of Wow you have (in current directory)
# The lib searches for WowClassic.exe or Wow.exe and returns a string on 
# what's been found.

namespace eval ::aabacus {
    namespace export getwowversion
}

# https://wiki.tcl-lang.org/page/Reading+version+information+from+Win32+executables
proc read_data { fn off len } {

    set ret ""
    if { ![catch {open $fn "r"} hfn] } {

        fconfigure $hfn -encoding binary -translation binary
        seek $hfn $off start
        set ret [read $hfn $len]

        close $hfn
    }

    return $ret
}

proc read_dw { fn off } {

    binary scan [read_data $fn $off 4] "i" ret
    return $ret
}

proc read_w { fn off } {

    binary scan [read_data $fn $off 2] "s" ret
    return $ret
}

proc GetExeVersion { fn } {

    set pe_offs    [read_dw $fn 0x3C]
    set pe_size    [expr [read_w $fn [expr $pe_offs + 0x14]] + 0x18]

    set num_of_obj     [read_w $fn [expr $pe_offs + 0x06]]
    set obj_table_offs [expr $pe_offs + $pe_size]

    ## for each object
    for {set i 0} {[expr $i < $num_of_obj]} {incr i} {

        set obj_rec_offs [expr $obj_table_offs + $i*0x28]

        ## if object name is not ".rsrc" then go to next
        set obj_name [string trim [read_data $fn [expr $obj_rec_offs + 0x00] 8] "\0"]
        if {![string equal $obj_name ".rsrc"]} { continue }

        # here we found .rsrc object
        set obj_size [read_dw $fn [expr $obj_rec_offs + 0x10]]
        set obj_offs [read_dw $fn [expr $obj_rec_offs + 0x14]]
        set obj_rva  [read_dw $fn [expr $obj_rec_offs + 0x0C]]

        # enumerate resources in .rsrc
        set dofs   $obj_offs
        set n1     [read_w $fn [expr $dofs + 0x0C]]
        set n2     [read_w $fn [expr $dofs + 0x0E]]

        ## for each id entry_rec
        for {set k 0} {[expr $k < $n2]} {incr k} {

            ## LEVEL 1 OF RESOURCE TREE ##
            set rdo    [expr $dofs + 0x10]
            set k_offs [expr $rdo + $n1*8 + $k*8]

            ## looking for record where id = RT_VERSION
            set res_id     [read_dw $fn $k_offs]
            if {[expr $res_id != 0x10]} { continue }

            ## this must be directory...
            set res_offs [read_dw $fn [expr $k_offs + 4]]
            if {![expr $res_offs & 0x80000000]} { return -1 }

            ## LEVEL 2 OF RESOURCE TREE ##
            set dofs   [expr ($res_offs & (0x80000000 ^ 0xFFFFFFFF))+ $obj_offs]
            set n1     [read_w $fn [expr $dofs + 0x0C]]
            set n2     [read_w $fn [expr $dofs + 0x0E]]
            set rdo    [expr $dofs + 0x10]
            if { $n1 != 0 || $n2 != 1 } { return -2 }
            set k_offs $rdo

            set res_id     [read_dw $fn $k_offs]
            if {[expr $res_id != 0x01]} { return -3 }

            ## this must be directory...
            set res_offs [read_dw $fn [expr $k_offs + 4]]
            if {![expr $res_offs & 0x80000000]} { return -4 }

            ## LEVEL 3 OF RESOURCE TREE ##
            set dofs   [expr ($res_offs & (0x80000000 ^ 0xFFFFFFFF))+ $obj_offs]
            set n1     [read_w $fn [expr $dofs + 0x0C]]
            set n2     [read_w $fn [expr $dofs + 0x0E]]
            set rdo    [expr $dofs + 0x10]
            if { $n1 != 0 || $n2 != 1 } { return -5 }
            set k_offs $rdo

            ## this must NOT be directory...
            set res_offs [read_dw $fn [expr $k_offs + 4]]
            if {[expr $res_offs & 0x80000000]} { return -7 }

            ## LEVEL 4 OF RESOURCE TREE ##
            set dofs     [expr $res_offs + $obj_offs]
            set inf_offs [expr [read_dw $fn $dofs] - $obj_rva + $obj_offs]
            set inf_len  [read_dw $fn [expr $dofs + 4]]

            #          here we can read version block and write it to file
            #          set info_block [read_data $fn $inf_offs $inf_len]

            set mag_stamp [read_dw $fn [expr $inf_offs + 0x28]]
            if {![string equal [format "%X" $mag_stamp] [format "%X" [expr 0xFEEF04BD]]]} {

                # maybe we need to follow szKey in VS_VERSION_INFO and look for offset to dwSignature correctly?
                # http://www.csn.ul.ie/~caolan/publink/winresdump/winresdump/doc/resfmt.txt
                return -8
            }

            # whew... finaly we can read version
            set v1 [read_dw $fn [expr $inf_offs + 0x30]]
            set v2 [read_dw $fn [expr $inf_offs + 0x34]]

            # return [format "%d.%d.%d.%d" [expr ($v1 & 0xFFFF0000)>>16] [expr ($v1 & 0xFFFF)] [expr ($v2 & 0xFFFF0000)>>16] [expr ($v2 & 0xFFFF)]]
            return [format "%d" [expr ($v1 & 0xFFFF0000)>>16]]
        }

        break
    }

    return 0
}

proc getexename {} {
    if [file exist WowClassic.exe] {
        return {WowClassic.exe}
    } else {
        #return {Wow.exe}
        set wow_exes [glob -type f -- {*Wow.exe}]
        if {[llength $wow_exes] > 1} {
            puts [format {Warning: Several wow executables found! [%s]. Using the first.} [join $wow_exes]]
        }
        return [lindex $wow_exes 0]
    }
}

proc ::aabacus::getwowversion {{fn ""}} {

    if {$fn==""} {
        set fn [getexename]
    }
    if {$fn == "WowClassic.exe"} {
        return "classic"
    }

    set versions {"vanilla" "tbc" "wotlk" "cata" "mop" "wod" "legion" "bfa" "shadow"}

    set ver [GetExeVersion $fn]
    set wowver [lindex $versions [incr ver -1]]
    return $wowver
}
