set version 123020b_SL_CLASSIC
lappend auto_path twapi
lappend auto_path aabacus
package require twapi
package require aabacus
set kb [string tolower [twapi::get_keyboard_layout_name]]
set game [format "%s" [aabacus::getwowversion]]
puts ""
puts "Welcome to multiboxing, sucka!"
puts ""
puts "USING 5MMB.TCL VERSION $version"
puts "WOW VERSION DETECTED IS $game"
puts "=============================================="
puts -nonewline "encoding utf-8 is available: "
if { [lsearch -exact [encoding names] utf-8] >= 0} { puts yes } else { puts no }
puts "system encoding: [encoding system]"
puts "=============================================="
puts "My keyboard layout is $kb"

# Program Globals
set display [twapi::get_display_size]
array unset toons
array unset autodelete
set winswapkeys "NumpadEnd NumpadDown NumpadPgDn NumpadLeft Clear"
set extrawait1 300
set extrawait2 300
set idletimer [clock milliseconds]
set returndelay 10000
set curraid m
set currlead 1
set nosmoverwrite 0
set healerskip 1
array set rotation { dps 1 heal 1 full 1 melee 1 ranged 1}
set prevoem 0
set oemdown 0
set keystate {}
set prev_keystate {}
set hunterlabels ""
set meleelabels ""
set healerlabels ""
set manalabels ""

# Uninitialized keywords for toonlist
#hideframes meleeiwt spacetofarm hivemind different5mans sendwwithiwt huntermeleeonfollow dontflashframe usefollowmacro dontsetcamera dontsetleadercamera dontautodelete nomacros oemkey monitor use2monitors
# Initialized keywords for toonlist
set raidname "myraid1"
set maxheal "11 11 11 11"


proc toonlistKey { var } {
	if { ! [info exists ::$var] } {
		return false
	}
	upvar ::$var $var
	eval set var $$var
	if { $var=="false" || $var==0 } {
		return false
	}
	return true
}

proc argcheck { name num {values "nil" } } {
	upvar $name $name
	eval set nameval $$name
	if { [llength $nameval] != $num } {
		puts "Error-- keyword $name wrong number of arguments--should be $num"
		#exit
	}
	if { $values!="nil" && [lsearch $values $nameval] == -1 } {
		puts "Error-- keyword $name must be one of $values"
		#exit
	}
}
array set kb_oem "00020409 oem3"
array set kb_oem "0000040f oem5"
array set kb_oem "00000406 oem5"
array set kb_oem "00000416 oem3"
array set kb_oem "00000809 oem8"
array set kb_oem "0000080a oem5"
array set kb_oem "00000407 oem5"
array set kb_oem "00000409 oem3"
array set kb_oem "0000040a oem5"
array set kb_oem "0000040c oem7"
array set kb_oem "00000410 oem5"
array set kb_oem "00000414 oem5"
array set kb_oem "0000041d oem5"
array set kb_oem "00000809 oem7"
array set kb_oem "00000813 oem7"
array set kb_oem "00010407 oem5"
array set kb_oem "00000816 oem5"
array set kb_oem "0000041a oem3"
array set kb_oem "00000804 oem3"

set SME "Interface\\Addons\\Furyswipes_5mmb\\Furyswipes_5mmb.lua"
#set SME SM_Extend.lua
set fail false

set toonlistf [lindex $argv 0]
if { $toonlistf == "" } { set toonlistf toonlist.txt }
if { ! [file exist $toonlistf ] } {
	puts "ERROR: YOU MUST HAVE A FILE NAMED $toonlistf IN THIS DIRECTORY"
	puts ""
	puts "FORMAT OF FILE:"
	puts "# <-this is a comment. It is ignored by the program"
	puts "You need to specify your multibox accounts with 5 words starting with box"
	puts "box <accountname> <password> <toon name> <role>"
	puts "Role can be tank / melee/ caster / hunter /healer / casterhealer / meleehealer / tankhealer"
	puts "EVERY TOON must have a role"
	puts "Windows for the toons will come out on the screen in the order you list them."
	puts "Tanks will get bigger windows, if possible"
	return
}
if { $fail } { puts "hit any key to return" ; gets stdin char ; return }
set tL [open $toonlistf r]
fconfigure $tL -encoding utf-8
if { $tL != "" } {
	puts "Found toonlist $toonlistf"
} else {
	puts "ERROR: Could not open $toonlistf in read mode."
}
set numtoons 0
set allraids {}
while { [gets $tL line] >= 0 } {
	set line [regsub "\n" $line "" ]
	if { $line == "" } { continue }
	set line [string trim $line]
	if { [string index $line 0] != "#" } {
		if { [string tolower [lindex $line 0]] == "box" } {
			if { [llength $line] < 6 } {
				puts "ERROR: box takes 5 or 6 arguments in toonlist line $line"
				puts "hit any key to return"
				gets stdin char
				return
			}
			set bnet_account [lindex $line 1]
			set passwd [lindex $line 2]
			set license [lindex $line 3]
			set name [lindex $line 4]
			set role [lindex $line 5]
			set raidletters [string tolower [lrange $line 6 end]]
			set raids ""
			set length [string length $license]
			if { $length > 2 } {
				set length [string length $license]
				set acctnick "[string index $license 0][string index $license [expr $length-2]][string index $license [expr $length-1]]"
			} else {
				set acctnick ${license}
			}
			foreach userraid $raidletters {
				regexp {([a-z]|)([0-9])?} $userraid match userraid cpunum
				if { $cpunum=="" } { set cpunum 1 }
				lappend raids ${userraid}${cpunum}
				dict lappend allraids ${userraid}${cpunum} "${name}_1${acctnick} $bnet_account $license $passwd $name $role $raids"
			}
			if { ! [regexp m $raids] } {
				lappend raids m1
				dict lappend allraids m1 "${name}_1${acctnick} $bnet_account $license $passwd $name $role $raids"
			}
			set toons($numtoons) "$bnet_account $license $passwd $name $role $raids"
			incr numtoons
		} else {
			set [string tolower [lindex $line 0]] [lrange $line 1 end]
		}
	}
}
close $tL
if { [toonlistKey keyboard] } {
	argcheck keyboard 1 "us uk de other"
	switch $keyboard {
		de { set oem "oem5" }
		other { set oem "oem7" }
		uk { set oem "oem8" }
		us { set oem "oem3" }
		default { set oem "oem3" }
	}
}
if { [toonlistKey monitor] } {
	argcheck monitor 1 "1280x1024 1920x1080 2560x1440 3360x1440 3840x2160"
}
if { [toonlistKey computer] } {
	argcheck computer 2
	unset computer
	set computer([lindex $computer 1]) [lindex $computer 2]
}
if { [toonlistKey raidname] } {
	argcheck raidname 1
}
if { [toonlistKey extrawait1] } {
	argcheck extrawait1 1
}
if { [toonlistKey extrawait2] } {
	argcheck extrawait2 1
}
if { [toonlistKey oemkey] } {
	argcheck oemkey 1
}
if { [toonlistKey autodelete] } {
	argcheck autodelete 2
	set autodeletelist([lindex $autodelete 0]) [lindex $autodelete 1]
}
if { ! [info exists computer(1) ] } { set computer(1) Local }
if $numtoons==0 {
	puts "ERROR: No box commands with toon names were found in $toonlistf. "
	puts "SEE toonlist_command_reference.txt"
	puts "hit any key to return"
	gets stdin char
	return
}
set tooncount $numtoons
if { $game=="classic" } {
	set wowexe "WowClassic.exe"
} else {
	set wowexe "Wow.exe"
}
if { ! [file exist "$wowexe" ] } {
	puts "ERROR: THIS PROGRAM MUST BE THE DIRECTORY WHERE YOUR $wowexe resides"
	return
}
if {$game=="tbc" || $game=="vanilla" } {
	set meleeiwt false
}
if { [toonlistKey oemkey] && $oemkey != "" } {
	set oem $oemkey
} else {
	if { [info exists kb_oem($kb)] } {
		set oem $kb_oem($kb)
	} else {
		set oem oem5
		puts "WARNING: I COULD NOT FIND YOUR KEYBOARD. ASSIGNING MOUSECLICK SHARING TO OEM5"
		puts "NOTIFY Furyswipes on discord."
		puts "Put this in your toonlist:"
		puts "oemkey oem5"
		puts "(or whichever it is)"
		puts "and drag-n-drop again"
	}
}
puts "Detected display size $display"
if { [toonlistKey monitor] && $monitor != "" } {
	puts "Automatic monitor selection overridden by user to $monitor"
} else {
	set sizes "1280x1024 1920x1080 2560x1440 3360x1440 3840x2160"
	foreach size $sizes {
		regexp "(\\d+)" $size match x
		regexp "x(\\d+)" $size match y
		if { [lindex $display 0] >= $x && [lindex $display 1] >= $y } {
			set monitor $size
		}
	}
	if { $monitor == "" } {
		puts "****************************************"
		puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		puts "WARNING: Supported monitor size not found. Check that windows scaling is 100%!"
		puts "If you have some terrible small monitor, the best I can do is 1280x1024."
		set monitor "1280x1024"
	} else {
		puts "Monitor automatically set to $monitor"
	}
}


#THESE ARE WINDOW CONFIGURATIONS
#Each is a list of 4-number sets.
#The numbers are win-size-x win-size-y win-position-x win-position-y
#There are a lot of lists. It's a 3d array.
#Main list is every window for that number of monitiors e.g. (5)
#Second list set is each combo of monitors with one window as main. (numpad keys)
#Third list is each monitor position in the set
# Right now, 3d only fully used (window switching) for raidhash(5) one monitor.
# 20 Window Raid
if { $monitor == "3840x2160" } {
	#3840x2160
	if { [toonlistKey use2monitors] } {
		set raidhash(1) {{3840 2160 0 0 }}
		set raidhash(2) {{3840 2160 0 0 } {3840 2160 3840 0 }}
		set raidhash(3) {{3840 2160 0 0 } {1920 1080 3840 0 } {1920 1080 3840 1080}}
		set raidhash(4) {{3840 2160 0 0 } {1920 1080 3840 0 } {1920 1080 5760 0 } {1920 1080 3840 1080}}
		set raidhash(5) {{1920 1440 960 720} {960 720 0 720} {960 720 960 0} {960 720 1920 0} {960 720 2880 720}}
		set raidhash(10) {{1280 1020 0 960} {1280 1020 1280 960} {1280 1020 2560 960} {640 480 640 0} {640 480 0 0} {640 480 0 480} {640 480 1280 0} {640 480 640 480} {640 480 1280 480} {640 480 1920 480}}
		set raidhash(20) {{640 480 0 0} {960 720 0 1440} {960 720 960 1440} {960 720 1920 1440} {640 480 640 0} {640 480 1280 0} {640 480 1920 0} {640 480 2560 0} {640 480 3200 0} {640 480 0 480} {640 480 640 480} {640 480 1280 480} {640 480 1920 480} {640 480 2560 480} {640 480 3200 480} {640 480 0 960} {640 480 640 960} {640 480 1280 960} {640 480 1920 960 } {640 480 2560 960}}
		set raidhash(25) {{533 430 1548 0} {1548 1290 0 860} {533 430 1548 430} {533 430 1548 860} {533 430 1548 1290} {533 430 1548 1720} {533 430 2081 0} {533 430 2081 430} {533 430 2081 860} {533 430 2081 1290} {533 430 2081 1720} {533 430 2614 0} {533 430 2614 430} {533 430 2614 860} {533 430 2614 1290} {533 430 2614 1720} {533 430 3147 0} {533 430 3147 430} {533 430 3147 860} {533 430 3147 1290} {533 430 3147 1720} {533 430 482 0} {533 430 1015 0} {533 430 482 430} {533 430 1015 430}}
		set raidhash(40) {{480 360 0 0} {1440 1080 960 1080} {480 360 480 0} {480 360 960 0} {480 360 1440 0} {480 360 1920 0} {480 360 2400 0} {480 360 2880 0} {480 360 3360 0} {480 360 0 360} {480 360 480 360} {480 360 960 360} {480 360 1440 360} {480 360 1920 360} {480 360 2400 360} {480 360 2880 360} {480 360 3360 360} {480 360 0 720} {480 360 480 720} {480 360 960 720} {480 360 1440 720} {480 360 1920 720} {480 360 2400 720} {480 360 2880 720} {480 360 3360 720} {480 360 0 1080} {480 360 480 1080} {480 360 2400 1080} {480 360 2880 1080} {480 360 3360 1080} {480 360 0 1440} {480 360 480 1440} {480 360 2400 1440} {480 360 2880 1440} {480 360 3360 1440} {480 360 0 1800} {480 360 480 1800} {480 360 2400 1800} {480 360 2880 1800} {480 360 3360 1800}}
	} else {
		set raidhash(1) {{3840 2160 0 0 }}
		set raidhash(2) {{2560 1440 0 720} {1280 720 0 0} {1280 720 1280 0} {1280 720 2560 0} {1280 720 2560 720}}
		set raidhash(3) {{2560 1440 0 720} {1280 720 0 0} {1280 720 1280 0} {1280 720 2560 0} {1280 720 2560 720}}
		set raidhash(4) {{2560 1440 0 720} {1280 720 0 0} {1280 720 1280 0} {1280 720 2560 0} {1280 720 2560 720}}
		if { ! [toonlistKey different5mans] } {
			set raidhash(5) {{2560 1440 0 720} {1280 720 0 0} {1280 720 1280 0} {1280 720 2560 0} {1280 720 2560 720}}
		} else {
			if { $game=="shadow" } {
				set raidhash(5) {{1138 640 0 880} {782 440 0 0} {782 440 0 440} {782 440 782 0} {782 440 782 440}}
			} elseif { $game=="classic" } {
				set raidhash(5) {{1138 640 0 1520} {782 440 1564 0} {782 440 1564 440} {782 440 2346 0} {782 440 2346 440}}
			} elseif { $game=="wotlk" } {
				set raidhash(5) {{1138 640 1138 880} {782 440 3128 0} {782 440 3128 440} {782 440 3128 880} {782 440 3128 880}}
			} elseif { $game=="tbc" } {
				set raidhash(5) {{1138 640 1138 1520} {782 440 2276 880} {782 440 2276 1320} {782 440 2279 1760} {782 440 3058 1760}}
			}
		}
		set raidhash(10) {{1280 1020 1280 960} {1280 1020 0 960} {1280 1020 2560 960} {640 480 0 480} {640 480 640 480} {640 480 1280 480} {640 480 1920 480} {640 480 0 0} {640 480 640 0} {640 480 1280 0}}
		set raidhash(10) {{1920 1080 0 1080} {960 540 0 540} {960 540 960 540} {960 540 0 0} {960 540 960 0} {1920 1080 1920 1080} { 960 540 1920 540} {960 540 2880 540} {960 540 1920 0} {960 540 2880 0}}
		set raidhash(10) {{1920 1080 0 1080} {1920 1080 1920 1080} {960 540 0 540} {960 540 960 540} {960 540 0 0} {960 540 960 0} {960 540 1920 540} {960 540 2880 540} {960 540 1920 0} {960 540 2880 0}}
		if { ! [toonlistKey different5mans] } {
			set raidhash(20) {{640 480 0 0} {960 720 0 1440} {960 720 960 1440} {960 720 1920 1440} {640 480 640 0} {640 480 1280 0} {640 480 1920 0} {640 480 2560 0} {640 480 3200 0} {640 480 0 480} {640 480 640 480} {640 480 1280 480} {640 480 1920 480} {640 480 2560 480} {640 480 3200 480} {640 480 0 960} {640 480 640 960} {640 480 1280 960} {640 480 1920 960 } {640 480 2560 960}}
		} else {
			set raidhash(20) {{1138 640 0 880} {782 440 0 0} {782 440 0 440} {782 440 782 0} {782 440 782 440} {1138 640 0 1520} {782 440 1564 0} {782 440 1564 440} {782 440 2346 0} {782 440 2346 440} {1138 640 1138 880} {782 440 3128 0} {782 440 3128 440} {782 440 3128 880} {782 440 3128 880} {1138 640 1138 1520} {782 440 2276 880} {782 440 2276 1320} {782 440 2279 1760} {782 440 3058 1760}}
		}
		set raidhash(25) { {1548 1290 0 860} {533 430 482 430} {533 430 1015 430} {533 430 482 0} {533 430 1015 0} {533 430 1548 0} {533 430 1548 430} {533 430 1548 860} {533 430 1548 1290} {533 430 1548 1720} {533 430 2081 0} {533 430 2081 430} {533 430 2081 860} {533 430 2081 1290} {533 430 2081 1720} {533 430 2614 0} {533 430 2614 430} {533 430 2614 860} {533 430 2614 1290} {533 430 2614 1720} {533 430 3147 0} {533 430 3147 430} {533 430 3147 860} {533 430 3147 1290} {533 430 3147 1720}}
		set raidhash(40) {{480 360 0 0} {1440 1080 960 1080} {480 360 480 0} {480 360 960 0} {480 360 1440 0} {480 360 1920 0} {480 360 2400 0} {480 360 2880 0} {480 360 3360 0} {480 360 0 360} {480 360 480 360} {480 360 960 360} {480 360 1440 360} {480 360 1920 360} {480 360 2400 360} {480 360 2880 360} {480 360 3360 360} {480 360 0 720} {480 360 480 720} {480 360 960 720} {480 360 1440 720} {480 360 1920 720} {480 360 2400 720} {480 360 2880 720} {480 360 3360 720} {480 360 0 1080} {480 360 480 1080} {480 360 2400 1080} {480 360 2880 1080} {480 360 3360 1080} {480 360 0 1440} {480 360 480 1440} {480 360 2400 1440} {480 360 2880 1440} {480 360 3360 1440} {480 360 0 1800} {480 360 480 1800} {480 360 2400 1800} {480 360 2880 1800} {480 360 3360 1800}}
		set raidhash(80) {{480 360 0 0} {1440 1080 960 1080} {480 360 480 0} {480 360 960 0} {480 360 1440 0} {480 360 1920 0} {480 360 2400 0} {480 360 2880 0} {480 360 3360 0} {480 360 0 360} {480 360 480 360} {480 360 960 360} {480 360 1440 360} {480 360 1920 360} {480 360 2400 360} {480 360 2880 360} {480 360 3360 360} {480 360 0 720} {480 360 480 720} {480 360 960 720} {480 360 1440 720} {480 360 1920 720} {480 360 2400 720} {480 360 2880 720} {480 360 3360 720} {480 360 0 1080} {480 360 480 1080} {480 360 2400 1080} {480 360 2880 1080} {480 360 3360 1080} {480 360 0 1440} {480 360 480 1440} {480 360 2400 1440} {480 360 2880 1440} {480 360 3360 1440} {480 360 0 1800} {480 360 480 1800} {480 360 2400 1800} {480 360 2880 1800} {480 360 3360 1800} {480 360 0 0} {1440 1080 960 1080} {480 360 480 0} {480 360 960 0} {480 360 1440 0} {480 360 1920 0} {480 360 2400 0} {480 360 2880 0} {480 360 3360 0} {480 360 0 360} {480 360 480 360} {480 360 960 360} {480 360 1440 360} {480 360 1920 360} {480 360 2400 360} {480 360 2880 360} {480 360 3360 360} {480 360 0 720} {480 360 480 720} {480 360 960 720} {480 360 1440 720} {480 360 1920 720} {480 360 2400 720} {480 360 2880 720} {480 360 3360 720} {480 360 0 1080} {480 360 480 1080} {480 360 2400 1080} {480 360 2880 1080} {480 360 3360 1080} {480 360 0 1440} {480 360 480 1440} {480 360 2400 1440} {480 360 2880 1440} {480 360 3360 1440} {480 360 0 1800} {480 360 480 1800} {480 360 2400 1800} {480 360 2880 1800} {480 360 3360 1800}}
	}
} elseif { $monitor == "3360x1440" } {
	#3360x1440
	if { [toonlistKey use2monitors] } {
		set raidhash(1) {{3360 1440 0 0 }}
		set raidhash(2) {{3360 1440 0 0 } {3360 1440 3360 0 }}
		set raidhash(3) {{3360 1440 0 0 } {1280 720 3360 0 } {1280 720 3360 720}}
		set raidhash(4) {{3360 1440 0 0 } {1280 720 3360 0 } {1280 720 3360 720 } {1280 720 4640 0}}
		set raidhash(5) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2580 0} {860 720 2580 720}}
		set raidhash(10) {{2064 960 688 0} {688 480 0 0} {688 480 0 480} {688 480 0 960} {688 480 688 960} {688 480 1376 960} {688 480 2064 960} {688 480 2752 0} {688 480 2752 480} {688 480 2752 960}}
		set raidhash(15) {{1440 1200 720 0} {720 600 0 0} {720 600 0 600} {720 600 2160 0} {720 600 2160 600} {480 400 2880 0} {480 400 2880 400} {480 400 2880 800} {480 400 3360 0} {480 400 3360 400} {480 400 3360 800} {480 400 3840 0} {480 400 3840 400} {480 400 3840 800} {480 400 4320 0}}
		set raidhash(20) {{490 360 0 0} {490 360 0 360} {490 360 0 720} {490 360 0 1080} {490 360 490 0} {490 360 490 360} {490 360 490 720} {490 360 490 1080} {980 720 980 0} {490 360 980 1080} {490 360 1470 720} {490 360 1470 1080} {490 360 1960 0} {490 360 1960 720} {490 360 1960 1080} {490 360 2450 0} {490 360 2450 360} {490 360 2450 720} {490 360 2450 1080} {490 360 980 720}}
	} else {
		set raidhash(1) {{3360 1440 0 0 }}
		set raidhash(2) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2580 0} {860 720 2580 720}}
		set raidhash(3) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2580 0} {860 720 2580 720}}
		set raidhash(4) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2580 0} {860 720 2580 720}}
		set raidhash(5) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2580 0} {860 720 2580 720}}
		set raidhash(10) {{2064 960 688 0} {688 480 0 0} {688 480 0 480} {688 480 0 960} {688 480 688 960} {688 480 1376 960} {688 480 2064 960} {688 480 2752 0} {688 480 2752 480} {688 480 2752 960}}
		set raidhash(15) {{1440 1200 720 0} {720 600 0 0} {720 600 0 600} {720 600 2160 0} {720 600 2160 600} {480 400 2880 0} {480 400 2880 400} {480 400 2880 800} {480 400 3360 0} {480 400 3360 400} {480 400 3360 800} {480 400 3840 0} {480 400 3840 400} {480 400 3840 800} {480 400 4320 0}}
		set raidhash(20) {{490 360 0 0} {490 360 0 360} {490 360 0 720} {490 360 0 1080} {490 360 490 0} {490 360 490 360} {490 360 490 720} {490 360 490 1080} {980 720 980 0} {490 360 980 1080} {490 360 1470 720} {490 360 1470 1080} {490 360 1960 0} {490 360 1960 720} {490 360 1960 1080} {490 360 2450 0} {490 360 2450 360} {490 360 2450 720} {490 360 2450 1080} {490 360 980 720}}
	}
} elseif { $monitor == "2560x1440" } {
	#x1440
	if { [toonlistKey use2monitors] } {
		set raidhash(1) {{2560 1440 0 0 }}
		set raidhash(2) {{2560 1440 0 0 } {2560 1440 2560 0 }}
		set raidhash(3) {{2560 1440 0 0 } {1280 720 2560 0 } {1260 720 2560 720}}
		set raidhash(4) {{2560 1440 0 0 } {1280 720 2560 0 } {1280 720 2560 720 } {1280 720 3360 0}}
		set raidhash(5) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2560 0} {860 720 2560 720}}
		set raidhash(5) {{1720 1440 860 0} {860 720 0 0} {860 720 0 720} {860 720 2560 0} {860 720 2560 720}}
		set raidhash(10) {{2064 960 688 0} {688 480 0 0} {688 480 0 480} {688 480 0 960} {688 480 688 960} {688 480 1376 960} {688 480 2064 960} {688 480 2752 0} {688 480 2752 480} {688 480 2752 960}}
		set raidhash(15) {{1440 1200 720 0} {720 600 0 0} {720 600 0 600} {720 600 2160 0} {720 600 2160 600} {480 400 2880 0} {480 400 2880 400} {480 400 2880 800} {480 400 3360 0} {480 400 3360 400} {480 400 3360 800} {480 400 3840 0} {480 400 3840 400} {480 400 3840 800} {480 400 4320 0}}
		set raidhash(20) {{490 360 0 0} {490 360 0 360} {490 360 0 720} {490 360 0 1080} {490 360 490 0} {490 360 490 360} {490 360 490 720} {490 360 490 1080} {980 720 980 0} {490 360 980 1080} {490 360 1470 720} {490 360 1470 1080} {490 360 1960 0} {490 360 1960 720} {490 360 1960 1080} {490 360 2450 0} {490 360 2450 360} {490 360 2450 720} {490 360 2450 1080} {490 360 980 720}}
	} else {
		set raidhash(1) {{2560 1440 0 0 }}
		set raidhash(2) {{1280 960 640 480} {640 480 0 480} {640 480 640 0} {640 480 1280 0} {640 480 1920 480}}
		set raidhash(3) {{1280 960 640 480} {640 480 0 480} {640 480 640 0} {640 480 1280 0} {640 480 1920 480}}
		set raidhash(4) {{1280 960 640 480} {640 480 0 480} {640 480 640 0} {640 480 1280 0} {640 480 1920 480}}
		set raidhash(5) {{1280 960 640 480} {640 480 0 480} {640 480 640 0} {640 480 1280 0} {640 480 1920 480}}
		set raidhash(10) {{2064 960 688 0} {688 480 0 0} {688 480 0 480} {688 480 0 960} {688 480 688 960} {688 480 1376 960} {688 480 2064 960} {688 480 2752 0} {688 480 2752 480} {688 480 2752 960}}
		set raidhash(15) {{1440 1200 720 0} {720 600 0 0} {720 600 0 600} {720 600 2160 0} {720 600 2160 600} {480 400 2880 0} {480 400 2880 400} {480 400 2880 800} {480 400 3360 0} {480 400 3360 400} {480 400 3360 800} {480 400 3840 0} {480 400 3840 400} {480 400 3840 800} {480 400 4320 0}}
		set raidhash(20) {{490 360 0 0} {490 360 0 360} {490 360 0 720} {490 360 0 1080} {490 360 490 0} {490 360 490 360} {490 360 490 720} {490 360 490 1080} {980 720 980 0} {490 360 980 1080} {490 360 1470 720} {490 360 1470 1080} {490 360 1960 0} {490 360 1960 720} {490 360 1960 1080} {490 360 2450 0} {490 360 2450 360} {490 360 2450 720} {490 360 2450 1080} {490 360 980 720}}
	}
} elseif { $monitor == "1280x1024" } {
	set raidhash(1) {{1280 1024 0 0 }}
	set raidhash(2) {{640 480 320 240} {320 240 0 240} {320 240 320 0} {320 240 640 0} {320 240 960 240}}
	set raidhash(3) {{640 480 320 240} {320 240 0 240} {320 240 320 0} {320 240 640 0} {320 240 960 240}}
	set raidhash(4) {{640 480 320 240} {320 240 0 240} {320 240 320 0} {320 240 640 0} {320 240 960 240}}
	set raidhash(5) {{640 480 320 240} {320 240 0 240} {320 240 320 0} {320 240 640 0} {320 240 960 240}}
} else {
	#1080p
	if { [toonlistKey use2monitors] } {
		set raidhash(1) {{1920 1080 0 0 }}
		set raidhash(2) {{1920 1080 0 0} {960 540 1920 540} {960 540 1920 0} {960 540 2880 0} {960 540 2880 540}}
		set raidhash(3) {{1920 1080 0 0} {960 540 1920 540} {960 540 1920 0} {960 540 2880 0} {960 540 2880 540}}
		set raidhash(4) {{1920 1080 0 0} {960 540 1920 540} {960 540 1920 0} {960 540 2880 0} {960 540 2880 540}}
		set raidhash(5) {{1920 1080 0 0} {960 540 1920 540} {960 540 1920 0} {960 540 2880 0} {960 540 2880 540}}
		set raidhash(10) {{1920 1080 0 0} {640 360 1920 0} {640 360 2560 0} {640 360 3200 0} {640 360 1920 360} {640 360 2560 360} {640 360 3200 360} {640 360 1920 720} {640 360 2560 720} {640 360 3200 720}}
		set raidhash(20) {{960 720 0 360} {480 360 0 0} {480 360 480 0} {480 360 960 0} {480 360 1440 0} {480 360 960 360} {480 360 1440 360} {480 360 960 720} {480 360 1920 0} {480 360 2400 0} {480 360 2880 0} {480 360 3360 0} {480 360 1920 360} {480 360 2400 360} {480 360 2880 360} {480 360 3360 360} {480 360 1920 720} {480 360 2400 720} {480 360 2880 720} {480 360 3360 720}}
		set raidhash(25) {{320 240 320 0} {480 360 0 480} {680 480 360 480} {320 240 0 0} {320 240 640 0} {320 240 960 0} {320 240 1280 0} {320 240 1600 0} {320 240 0 240} {320 240 320 240} {320 240 640 240} {320 240 960 240} {320 240 960 480} {320 240 1600 240} {320 240 1280 240} {320 240 1280 480} {320 240 1600 480} {320 240 960 720} {320 240 1280 720} {320 240 1600 720}}
		set raidhash(25) {{533 430 1548 0} {1548 1290 0 860} {533 430 1548 430} {533 430 1548 860} {533 430 1548 1290} {533 430 1548 1720} {533 430 2081 0} {533 430 2081 430} {533 430 2081 860} {533 430 2081 1290} {533 430 2081 1720} {533 430 2614 0} {533 430 2614 430} {533 430 2614 860} {533 430 2614 1290} {533 430 2614 1720} {533 430 3147 0} {533 430 3147 430} {533 430 3147 860} {533 430 3147 1290} {533 430 3147 1720} {533 430 482 0} {533 430 1015 0} {533 430 482 430} {533 430 1015 430}}
		set raidhash(25) {{266 215 774 0} {774 645 0 430} {266 215 774 215} {266 215 774 430} {266 215 774 645} {266 215 774 860} {266 215 1040 0} {266 215 1040 215} {266 215 1040 430} {266 215 1040 645} {266 215 1040 860} {266 215 1307 0} {266 215 1307 215} {266 215 1307 430} {266 215 1307 645} {266 215 1307 860} {266 215 1573 0} {266 215 1573 215} {266 215 1573 430} {266 215 1573 645} {266 215 1573 860} {266 215 241 0} {266 215 507 0} {266 215 241 215} {266 215 507 215}}
		set raidhash(40) {{240 180 0 0} {480 360 480 720} {480 360 0 720} {480 360 960 720} {480 360 1440 720} {240 180 120 0} {240 180 240 0} {240 180 360 0} {240 180 480 0} {240 180 600 0} {240 180 720 0} {240 180 840 0} {240 180 960 0} {240 180 1200 0} {240 180 1440 0} {240 180 1680 0} {240 180 0 180} {240 180 240 180} {240 180 480 180} {240 180 720 180} {240 180 960 180} {240 180 1200 180} {240 180 1440 180} {240 180 1680 180} {240 180 0 360} {240 180 240 360} {240 180 480 360} {240 180 720 360} {240 180 960 360} {240 180 1200 360} {240 180 1440 360} {240 180 1680 360} {240 180 0 540} {240 180 240 540} {240 180 480 540} {240 180 720 540} {240 180 960 540} {240 180 1200 540} {240 180 1440 540} {240 180 1680 540}}
	} else {
		set raidhash(1) {{1920 1080 0 0 }}
		set raidhash(2) {{960 540 0 540 } {960 540 0 0}}
		set raidhash(3) {{960 540 0 540 } {960 540 0 0 } {960 540 960 0}}
		set raidhash(4) {{960 540 0 540 } {960 540 0 0 } {960 540 960 0} {960 540 960 540}}
		set raidhash(5) {{960 720 480 360} {480 360 0 360} {480 360 480 0} {480 360 960 0} {480 360 1440 360}}
		set raidhash(5) {{1280 720 0 360} {640 360 0 0} {640 360 640 0} {640 360 1280 0} {640 360 1280 360}}
		set raidhash(10) {{640 510 0 480} {640 510 640 480} {640 510 1280 480} {320 240 320 0} {320 240 0 0} {320 240 0 240} {320 240 640 0} {320 240 320 240} {320 240 640 240} {320 240 960 240}}
		set raidhash(10) {{960 540 0 540} {960 540 960 540} {480 270 0 270} {480 270 480 270} {480 270 0 0} {480 270 480 0} {480 270 960 270} {480 270 1440 270} {480 270 960 0} {480 270 1440 0}}
		set raidhash(20) {{320 240 320 0} {480 360 0 480} {680 480 360 480} {320 240 0 0} {320 240 640 0} {320 240 960 0} {320 240 1280 0} {320 240 1600 0} {320 240 0 240} {320 240 320 240} {320 240 640 240} {320 240 960 240} {320 240 960 480} {320 240 1600 240} {320 240 1280 240} {320 240 1280 480} {320 240 1600 480} {320 240 960 720} {320 240 1280 720} {320 240 1600 720}}
		set raidhash(25) {{266 215 774 0} {774 645 0 430} {266 215 774 215} {266 215 774 430} {266 215 774 645} {266 215 774 860} {266 215 1040 0} {266 215 1040 215} {266 215 1040 430} {266 215 1040 645} {266 215 1040 860} {266 215 1307 0} {266 215 1307 215} {266 215 1307 430} {266 215 1307 645} {266 215 1307 860} {266 215 1573 0} {266 215 1573 215} {266 215 1573 430} {266 215 1573 645} {266 215 1573 860} {266 215 241 0} {266 215 507 0} {266 215 241 215} {266 215 507 215}}
		set raidhash(40) {{240 180 0 0} {480 360 480 720} {480 360 0 720} {480 360 960 720} {480 360 1440 720} {240 180 120 0} {240 180 240 0} {240 180 360 0} {240 180 480 0} {240 180 600 0} {240 180 720 0} {240 180 840 0} {240 180 960 0} {240 180 1200 0} {240 180 1440 0} {240 180 1680 0} {240 180 0 180} {240 180 240 180} {240 180 480 180} {240 180 720 180} {240 180 960 180} {240 180 1200 180} {240 180 1440 180} {240 180 1680 180} {240 180 0 360} {240 180 240 360} {240 180 480 360} {240 180 720 360} {240 180 960 360} {240 180 1200 360} {240 180 1440 360} {240 180 1680 360} {240 180 0 540} {240 180 240 540} {240 180 480 540} {240 180 720 540} {240 180 960 540} {240 180 1200 540} {240 180 1440 540} {240 180 1680 540}}
	}
}
if {[toonlistKey windowplacement]} {
	foreach {winnum positions} $windowplacement {
  		set raidhash($winnum) $positions
	}
}
if { ! $nosmoverwrite } {
	set sM [open $SME r]
	fconfigure $sM -encoding utf-8
	set sMN [open tmp w+]
	fconfigure $sMN -encoding utf-8
	while { [gets $sM line] >= 0 } {
		if { [regexp "^FSMB_game" $line ] } {
			puts $sMN "FSMB_game=\"$game\""
		} elseif { [regexp "^FSMB_usefollowmacro" $line ] } {
			puts $sMN "FSMB_usefollowmacro=[toonlistKey usefollowmacro]"
		} elseif { [regexp "^FSMB_dontsetcamera" $line ] } {
			puts $sMN "FSMB_dontsetcamera=[toonlistKey dontsetcamera]"
		} elseif { [regexp "^FSMB_dontsetleadercamera" $line ] } {
			puts $sMN "FSMB_dontsetleadercamera=[toonlistKey dontsetleadercamera]"
		} elseif { [regexp "^FSMB_tank" $line ] } {
			puts -nonewline $sMN "FSMB_tank="
			set found_tank false
			for { set i 0 } { $i<[array size toons] } { incr i } {
				if { ! $found_tank && [string tolower [lindex $toons($i) 4]] == "tank" } {
					set name [string totitle [ string tolower [lindex $toons($i) 3]]]
					if { [regexp {\-} $name] } {
						regexp "(.*)-" $name match name
					}
					set found_tank true
					puts $sMN \"$name\"
				}
			}
			if { ! $found_tank } { puts $sMN \"\" }
		} elseif { [regexp "^FSMB_nomacros" $line ] } {
			if { [toonlistKey nomacros] } {
				puts $sMN "FSMB_nomacros=true"
			} else {
				puts $sMN "FSMB_nomacros=nil"
			}
		} elseif { [regexp "^FSMB_healerlist" $line ] } {
			puts -nonewline $sMN "FSMB_healerlist=\{"
			set first false
			for { set i 0 } { $i<[array size toons] } { incr i } {
				if { [regexp "healer" [ string tolower [lindex $toons($i) 4]]] } {
					set name [string totitle [ string tolower [lindex $toons($i) 3]]]
					if { [regexp {\-} $name] } {
						regexp "(.*)-" $name match name
					}
					if { $first=="false" } {
						puts -nonewline $sMN \"$name\"
						set first true
					} else {
						puts -nonewline $sMN ,\"$name\"
					}
				}
			}
			puts $sMN "\}"
		} elseif { [regexp "^FSMB_invitelist" $line ] } {
			set toonno 1
			puts -nonewline $sMN "FSMB_invitelist=\{"
			set first false
			for { set i 0 } { $i<[array size toons] } { incr i } {
				set name [string totitle [ string tolower [lindex $toons($i) 3]]]
				if { $first=="false" } {
					puts -nonewline $sMN \[$toonno\]=\"$name\"
					set first true
				} else {
					puts -nonewline $sMN ,\[$toonno\]=\"$name\"
				}
				incr toonno
			}
			puts $sMN "\}"
		} elseif { [regexp "^FSMB_toonlist" $line ] } {
			set toonno 1
			puts -nonewline $sMN "FSMB_toonlist=\{"
			set first false
			for { set i 0 } { $i<[array size toons] } { incr i } {
				set name [string totitle [ string tolower [lindex $toons($i) 3]]]
				if { [regexp {\-} $name] } {
					regexp "(.*)-" $name match name
				}
				if { $first=="false" } {
					puts -nonewline $sMN \[$toonno\]=\"$name\"
					set first true
				} else {
					puts -nonewline $sMN ,\[$toonno\]=\"$name\"
				}
				incr toonno
			}
			puts $sMN "\}"
		} elseif { [regexp "^FSMB_RAID" $line ] && [toonlistKey raidname] } {
			puts $sMN "FSMB_RAID = \"MULTIBOX_$raidname\""
		} elseif { [regexp "^FSMB_maxheal" $line ] && [toonlistKey maxheal] } {
			puts -nonewline $sMN "FSMB_maxheal=\{Druid=[lindex $maxheal 0],Priest=[lindex $maxheal 1],Shaman=[lindex $maxheal 2],Paladin=[lindex $maxheal 3]"
			puts $sMN "\}"
		} elseif { [regexp "^FSMB_autodelete" $line ] } {
			puts $sMN "FSMB_autodelete=[toonlistKey useautodelete]"
		} else {
			puts $sMN $line
		}
	}
	close $sMN
	close $sM
	file copy -force tmp $SME
	file delete tmp
}


#------- START OF WINSWAP CODE FOR SHADOWLANDS/CLASSIC
if {[toonlistKey usecapslock]} { set lock 0x14 } else { set lock 0x91 }
proc pop { raid } {
	global game allraids raidhash new_windows newwin order extrawait1 extrawait2 wowexe curraid rotation
	array set rotation { dps 1 heal 1 full 1 melee 1 ranged 1}
	set wow_name "World of Warcraft"
	set curraid $raid
	if { ! [ dict exists $allraids ${raid}1] } {
		puts "Error, no such raid $raid"
		return
	}
	set raidsize [llength [dict get $allraids ${curraid}1]]
	if {$raidsize > 40} {
		set wincount 80
	} elseif {$raidsize > 25} {
		set wincount 40
	} elseif {$raidsize > 20 } {
		set wincount 25
	} elseif {$raidsize > 10 } {
		set wincount 20
	} elseif {$raidsize > 5 } {
		set wincount 10
	} else {
		set wincount $raidsize
	}
	# Open any new wow wins.
	set new_windows ""
	set numwins 0
	set existing_wins ""
	#Count how many to pop
	foreach mywin [dict get $allraids ${curraid}1] {
		set winname [lindex $mywin 0]
		if { [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -text $winname ] == "" } {
			incr numwins
		} else {
			lappend existing_wins $winname
		}
	}
	puts "Popping $numwins wow shells."
	if {$numwins==0} {return}
	set i 0
	foreach win [dict get $allraids ${curraid}1] {
		set winname [lindex $win 0]
		set pos [lindex $raidhash($wincount) $i]
		if { [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -text $winname ] == "" } {
			if { $numwins == 1 } {
				if { $game=="classic" } {
					twapi::shell_execute -waitforinputidle true -path wowClassic.exe
				} else {
					twapi::shell_execute -waitforinputidle true -path wow.exe
				}
			} else {
				if { $game=="classic" } {
					twapi::shell_execute -path wowClassic.exe
				} else {
					twapi::shell_execute -path wow.exe
				}
			}
			lappend new_windows "$winname $i"
			incr numwins -1
		}
		incr i
	}
	set wow_pids [twapi::get_process_ids -glob -name $wowexe]
	puts $wow_pids
	puts "Extrawait1"
	fswait $extrawait1
	puts "done!"
	set i 0
	foreach win $new_windows {
		set newwin [lindex $win 0]
		set order [lindex $win 1]
		set toon [lindex [dict get $allraids ${curraid}1] $order]
		set rename_to [lindex $toon 0]
		set acct [lindex $toon 1]
		set pw [lindex $toon 3]
		set x [lindex $raidhash($wincount) $order 0]
		set y [lindex $raidhash($wincount) $order 1]
		set xpos [lindex $raidhash($wincount) $order 2]
		set ypos [lindex $raidhash($wincount) $order 3]
		set mywin [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -text $wow_name]
		twapi::set_foreground_window $mywin
		twapi::resize_window $mywin $x $y
		twapi::move_window $mywin $xpos $ypos
		puts "Extrawait2"
		fswait $extrawait2
		puts "done!"
		twapi::set_window_text $mywin "$rename_to"
		twapi::set_focus $mywin
		twapi::set_foreground_window $mywin
		twapi::enable_window_input $mywin
		twapi::send_input_text "$acct"
		twapi::enable_window_input $mywin
		twapi::send_keys \{tab\}
		twapi::enable_window_input $mywin
		twapi::send_input_text "$pw"
		twapi::enable_window_input $mywin
		twapi::send_keys ~
		incr i
		#if {$i > 3 } { break }
	}
}

proc closeall {} {
	global wowexe
	puts "CLOSING"
	set wow_pids [twapi::get_process_ids -glob -name $wowexe]
	foreach mypid $wow_pids {
		set mywin [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -pids $mypid ]
		if { $mywin != "" } {
			twapi::close_window $mywin
		}
	}
}

proc fswait { ms } {
	set currclock [clock milliseconds]
	set end_ms [expr $currclock + $ms]
	while {[clock milliseconds] < $end_ms} {
		if { ! [expr [clock milliseconds] % 300] } {
		}
	}
	return
}

proc help {} {
	puts "COMMANDS:"
	puts "REMEMBER SUCKA! SCROLL LOCK MUST BE _ON_ FOR THESE TO WORK."
	puts "IMPORTANT: You must DISABLE focus-follows-mouse for 5mmb to work on retail/classic."
	puts "New roles supported in toonlist: casterhealer meleehealer -- USE THEM, otherwise those slots won't heal"
	puts "ctrl-h: list these commands"
	puts "ctrl-alt-m: Start main raid (everyone in toonlist) (will pop any windows not yet open)"
	#puts "rand <x>: Randomize x windows from the toonlist, using as many different armor types as possible"
	puts "shift-ctrl-m: reset all window positions"
	puts "ctrl-alt-o: close all windows"
}

puts "=========== WELCOME TO THE NEW LEGAL RETAIL FIVE MINUTE MULTIBOXING =========="
puts ""
proc waspressed { keys } {
	#returns 1 if all keys were pressed since last update
	global keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { ![lindex [dict get $keystate $mystat] 0] } {
			return 0
		}
	}
	return 1
}

proc anywaspressed { keys } {
	#returns key name of first key in the list to be found to have been pressed since last update
	global keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { [lindex [dict get $keystate $mystat] 0] } {
			return $mystat
		}
	}
	return
}

proc anykeydown { keys } {
	#returns key name of first key in the list to go from ispressed0 to ispressed1
	global keystate prev_keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { ![lindex [dict get $prev_keystate $mystat] 1] && [lindex [dict get $keystate $mystat] 1] } {
			return $mystat
		}
	}
	return
}

proc anykeyup { keys } {
	#returns key name of first key in the list to go from ispressed0 to ispressed1
	global keystate prev_keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { [lindex [dict get $prev_keystate $mystat] 1] && ![lindex [dict get $keystate $mystat] 1] } {
			return $mystat
		}
	}
	return
}

proc ispressed { keys } {
	#checks for all keys pressed at once
	global keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { ![lindex [dict get $keystate $mystat] 1] } {
			return 0
		}
	}
	return 1
}

proc isnotpressed { keys } {
	#isnotpressed demands all keys listed not be pressed
	global keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { [lindex [dict get $keystate $mystat] 1] } {
			return 0
		}
	}
	return 1
}

proc anyispressed { keys } {
	#checks for any keys pressed and returns first one.
	global keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { [lindex [dict get $keystate $mystat] 1] } {
			return $mystat
		}
	}
	return
}

proc mouse_buttons_pressed { } {
	set keys "0x01 0x02 0x04"
	foreach mystat $keys {
		if { [expr [twapi::GetAsyncKeyState $mystat] & 0x80000000] } {
			return true
		}
	}
	return false
}

proc both_mouse_buttons_pressed { } {
	set keys "0x01 0x02 "
	foreach mystat $keys {
		if { ![expr [twapi::GetAsyncKeyState $mystat] & 0x80000000] } {
			return false
		}
	}
	return true
}

proc wasnotpressed { keys } {
	#returns 1 if none of the keys were pressed since last update, 0 if any of them were
	global keystate
	if { $keys == ""} {return 1}
	foreach mystat $keys {
		if { [lindex [dict get $keystate $mystat] 0] } {
			return 0
		}
	}
	return 1
}

proc 5mmb_update_keystate { {keylist ""} } {
	global keystate prev_keystate
	#If keylist is "" this proc checks the last pressed bit for all keys registered and sets it in the array. All hotkeys will only check this array from now on.
	#Array is reset at the end of every main loop.
	#This means you can have a key in more than one hotkey and it will work.
	#If keylist lists keys, they are added to the array (with state)
	#Keystate contains 2 elements-- 1) was pressed since last run of 5mmb_update_keystate with no args 2) currently down at last run of 5mmb_update_keystate with no args
	set keys ""
	foreach key $keylist {
		if {$key=="TRIGGER"} {
			continue
		}
		if { [string length $key] > 1 } {
			#don't blank ! by itself
			set key [regsub "!" $key ""]
		}
		lappend keys [lindex [twapi::_hotkeysyms_to_vk $key] 1]
	}
	foreach key $keys {
		if { ! [dict exists $keystate $key ] } {
			dict set keystate $key "[expr [twapi::GetAsyncKeyState $key] & 0x1] [expr [twapi::GetAsyncKeyState $key] & 0x80000000]"
			dict set prev_keystate $key [dict get $keystate $key]
		}
	}
	if { $keylist != "" } {
		return
	}
	set prev_keystate $keystate
	foreach key [dict keys $keystate] {
		dict set keystate $key "[expr [twapi::GetAsyncKeyState $key] & 0x1] [expr [twapi::GetAsyncKeyState $key] & 0x80000000]"
	}
}

proc 5mmb_monitor { args } {
	global lock
	if { [twapi::GetKeyState $lock] == 0 } {
		return
	}
	set keylist "" ; set script "" ; set KEYUP false ; set ANYPRESSED false ; set MOVEKEY false ; set add_key_as_script_arg false ; set notkeys "" ; set keys ""
	foreach arg $args {
		if { $arg=="-anypressed" } {
			set ANYPRESSED true
			continue
		}
		if { $arg=="-keyup" } {
			set KEYUP true
			continue
		}
		if { $arg=="-movekey" } {
			set MOVEKEY true
			continue
		}
		if { $keylist=="" } {
			set keylist $arg
			continue
		}
		if { $script=="" } {
			set script $arg
		}
	}
	5mmb_update_keystate $keylist
	foreach key $keylist {
		if {$key == "TRIGGER" } {
			set add_key_as_script_arg true
			continue
		}
		if { [regexp "^!" $key] } {
			set key [regsub "!" $key ""]
			lappend notkeys [lindex [twapi::_hotkeysyms_to_vk $key] 1]
		} else {
			lappend keys [lindex [twapi::_hotkeysyms_to_vk $key] 1]
		}
	}
	if { $ANYPRESSED } {
		set pressed [anywaspressed $keys]
		if { ($keys=="" || $pressed!="") && ($notkeys=="" || ![ispressed $notkeys]) } {
			if $add_key_as_script_arg {
				resettimer
				eval "$script $pressed"
			} else 	{
				resettimer
				eval $script
			}
		}
	} elseif { $KEYUP } {
		set pressed [anykeyup $keys]
		if { ($keys=="" || $pressed!="") && ($notkeys=="" || ![ispressed $notkeys]) } {
			if $add_key_as_script_arg {
				resettimer
				eval "$script $pressed"
			} else {
				resettimer
				eval $script
			}
		}
	} elseif { $MOVEKEY } {
		set pressed [anykeydown $keys]
		if { ($keys=="" || $pressed!="") && ($notkeys=="" || ![ispressed $notkeys]) } {
			if $add_key_as_script_arg {
				resettimer
				eval "$script $pressed"
			} else {
				resettimer
				eval $script
			}
		}
	} else {
		# requires ALL KEYS PRESSED SIMULTANEOUSLY
		if { ($keys=="" || [ispressed $keys]) && ($notkeys=="" || ![ispressed $notkeys]) } {
			resettimer
			eval $script
		}
	}
}

proc resettimer {} {
	global idletimer
	set idletimer [clock milliseconds]
}

proc 5mmb_tilde {} {
	global lock
	if { [twapi::GetKeyState $lock] == 0 } {
		return
	}
	global oem prevoem oemdown
	array set oemkeymap {oem3 0xc0 oem4 0xdb oem5 0xdc oem6 0xdd oem7 0xde oem8 0xdf}
	set myoemkey $oemkeymap($oem)
	5mmb_update_keystate "0xc0 0xdb 0xdc 0xdd 0xde 0xdf"
	if { !$oemdown && !$prevoem && [ispressed $myoemkey] } {
		resettimer
		set nex [nextwin full]
		eval "arrangewin $nex"
	}
	if { ![ispressed $myoemkey] } { set oemdown 0 }
	set prevoem [ispressed $myoemkey]
}

proc reset_rotations {} {
	global rotation
	array set rotation { dps 1 heal 1 full 1 melee 1 ranged 1}
}

proc arrangewin { numpadkey } {
	#Rearranges windows with argument being main (large) window.
	global allraids raidhash curraid
	set winnum [string index $numpadkey end]
	if { $winnum == 1 } { array set rotation { dps 1 heal 1 full 1 melee 1 ranged 1} }
	array set winorder "1 {0 1 2 3 4 5 6 7 8 9} 2 {1 0 2 3 4 5 6 7 8 9} 3 {2 1 0 3 4 5 6 7 8 9} 4 {3 1 2 0 4 5 6 7 8 9} 5 {4 1 2 3 0 5 6 7 8 9} 6 {5 1 2 3 4 0 6 7 8 9} 7 {6 1 2 3 4 5 0 7 8 9} 8 {7 1 2 3 4 5 6 0 8 9} 9 {8 1 2 3 4 5 6 7 0 9} 0 {9 1 2 3 4 5 6 7 8 0}"
	set raidsize [llength [dict get $allraids ${curraid}1]]
	if {$raidsize > 40} { set wincount 80
	} elseif {$raidsize > 25} { set wincount 40
	} elseif {$raidsize > 20 } { set wincount 25
	} elseif {$raidsize > 10 } { set wincount 20
	} elseif {$raidsize > 5 } { set wincount 10
	} else { set wincount $raidsize }
	set raiders [dict get $allraids ${curraid}1]
	for {set i [expr [llength $raiders]-1]} {$i>-1} {incr i -1} {
		set toon [lindex $raiders [lindex $winorder($winnum) $i]]
		set winname [lindex $toon 0]
		set pos [lindex $raidhash($wincount) $i]
		set mywinh [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -text $winname ]
		if { $mywinh != "" } {
			twapi::restore_window $mywinh
			twapi::resize_window $mywinh [lindex $pos 0] [lindex $pos 1]
			twapi::move_window $mywinh [lindex $pos 2] [lindex $pos 3]
			twapi::set_foreground_window $mywinh
		}
	}
}

proc changelead { fkey } {
	global currlead
	set currlead [expr $fkey - 0x74]
}

proc switchwin { rotation_type } {
	global allraids winhandles curraid
	set next [nextwin $rotation_type]
	set mywin [lindex [dict get $allraids ${curraid}1] [expr $next -1] 0]
	set mywin [getwin [lindex [dict get $allraids ${curraid}1] [expr $next -1] 0]]
	if { $mywin!="" } {
		twapi::set_foreground_window $mywin
	}
}

proc focuswin { number } {
	global allraids winhandles curraid
	set mywin [lindex [dict get $allraids ${curraid}1] [expr $number -1] 0]
	set mywin [getwin [lindex [dict get $allraids ${curraid}1] [expr $number -1] 0]]
	if { $mywin!="" } {
		twapi::set_foreground_window $mywin
	}
}

proc focusmousewin { } {
	global rotation currlead
	array set rotation "dps $currlead heal $currlead full $currlead melee $currlead ranged $currlead"
	set xy [twapi::get_mouse_location]
	set mywin [twapi::get_window_at_location [lindex $xy 0] [lindex $xy 1]]
	if { $mywin!="" } {
		twapi::set_foreground_window $mywin
	}
}

proc wow_is_focused { } {
	global allraids wowexe curraid
	set mytoons ""
	foreach toon [dict get $allraids ${curraid}1] {
		lappend mytoons [lindex $toon 0]
	}
	set wow_pids [twapi::get_process_ids -glob -name $wowexe]
	set existing_wins ""
	set mywin [twapi::get_foreground_window]
	if { $mywin!="" } {
		if { [lsearch $mytoons [twapi::get_window_text $mywin]] > -1 } {
			return true
		}
	}
	return false
}

proc getwin { name } {
	global wowexe
	set wow_pids [twapi::get_process_ids -glob -name $wowexe]
	set existing_wins ""
	foreach mypid $wow_pids {
		if { [set mywin [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -pids $mypid -text $name]] != "" } {
			return $mywin
		}
	}
}

proc nextwin { rotation_type } {
	#returns the number of the next window in the rotation
	#Rotation types:
	#Full: rotates through all windows
	#dps: rotates through dps twice then all windows once (skips healer 2/3 times)
	#heal: rotates through healer casterhealer meleehealer only
	#melee: rotates through melee/tank only
	#ranged: rotates through caster/hunter only
	global allraids raidhash winhandles wowexe healerskip curraid rotation winroles
	array set roles { dps { melee tank caster healer casterhealer meleehealer hunter} heal { healer casterhealer meleehealer } melee { tank melee meleehealer } ranged { caster casterhealer hunter }}
	set wow_pids [twapi::get_process_ids -glob -name $wowexe]
	set existing_wins ""
	foreach mypid $wow_pids {
		set thishwin [twapi::find_windows -single -messageonlywindow false -popup false -toplevel true -visible true -pids $mypid]
		if { $thishwin != "" } {
			lappend existing_wins [twapi::get_window_text $thishwin]
		}
	}
	set winnumber 0
	set numtoonsinrole 0
	array set winroles {}
	foreach toon [dict get $allraids ${curraid}1] {
		incr winnumber
		if { [lsearch $existing_wins [lindex $toon 0]] > -1 && ($rotation_type=="full" || [lsearch $roles($rotation_type) [lindex $toon 5]] > -1) } {
			if { $rotation_type == "dps" && [lindex $toon 5] == "healer" && [expr $healerskip %3] } { continue }
			incr numtoonsinrole
			set winroles($numtoonsinrole) "[lindex $toon 0] $winnumber"
		}
	}
	if { $rotation($rotation_type)>=$numtoonsinrole } {
		set rotation($rotation_type) 1
	} else {
		incr rotation($rotation_type)
	}
	if { ! [info exists winroles($rotation($rotation_type))] } { set rotation($rotation_type) 1 }
	if { $rotation_type=="dps" && [lindex $winroles($rotation($rotation_type)) 1]==1 } { incr healerskip }
	if { [lindex $winroles($rotation($rotation_type)) 1]==1 } { set rotation(full) 1 }
	return [lindex $winroles($rotation($rotation_type)) 1]
}

# YOU MUST CLOSE ALL EXISTING WOW WINDOWS EACH TIME YOU RUN. WINDOWS MUST BE SPAWNED FROM THIS SHELL.
if { ($game == "shadow" || $game == "classic")} { {closeall} }
if { ($game == "shadow" || $game == "classic")} { help }
# if you don't use the full rotation for 500ms, it will switch back to main
while { ($game == "shadow" || $game == "classic")} {
	after 1
	#if { [mouse_buttons_pressed] } { continue }
	5mmb_tilde ; #This cycles windows when tilde is pressed.
	5mmb_update_keystate ; # Do not remove or move
	#THESE KEY MONITORS ONLY WORK WHEN SCROLL LOCK IS ON!
	5mmb_monitor -anypressed "2 5 !0x12" "switchwin dps"
	5mmb_monitor -anypressed "3 !0x10 !0x12" "switchwin dps"
	5mmb_monitor "3 0x10 !0x12" "switchwin full"
	5mmb_monitor -anypressed "4 6 7 f l !0x12" "switchwin full"
	5mmb_monitor -anypressed "0x75 0x76 0x77 0x79 0x7a 0x7b 0x7c TRIGGER" "switchwin full ; changelead"
	5mmb_monitor "ALT 4" "reset_rotations"
	5mmb_monitor -anypressed "ESC 1 " "switchwin full"
	5mmb_monitor -anypressed "0x70 0x71 0x72 0x73 0x74" "switchwin heal"
	if { [toonlistKey demonhuntertank] } {
		5mmb_monitor -keyup "x q e 0x25 0x26 0x27 0x28" "switchwin full"
		5mmb_monitor "SPACE SHIFT" "switchwin full"
	} else {
		5mmb_monitor -keyup "SPACE x q e 0x25 0x26 0x27 0x28" "switchwin full"
	}
	5mmb_monitor -anypressed "TAB" "arrangewin $currlead"
	5mmb_monitor "ALT 2" "arrangewin $currlead"
	5mmb_monitor "CONTROL h" {help}
	5mmb_monitor "CONTROL ALT o" {closeall}
	#TRIGGER passes whatever numpad key is pressed to arrangewin
	5mmb_monitor -anypressed "0x61 0x62 0x63 0x64 0x65 0x66 0x67 0x68 0x69 0x60 TRIGGER" "arrangewin"
	foreach raid [dict keys $allraids] {
		set raid [string index $raid 0]
		5mmb_monitor "CONTROL ALT $raid" "pop $raid"
		5mmb_monitor "CONTROL SHIFT $raid" "arrangewin 1"
	}
	if { [twapi::GetKeyState $lock] && [expr $idletimer + $returndelay] < [clock milliseconds] && [wow_is_focused] } {
		resettimer
		reset_rotations
	}
}
