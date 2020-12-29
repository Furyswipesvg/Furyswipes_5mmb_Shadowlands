
if not(GetLocale() == "koKR") then
    return;
end

local L = LibStub("AceLocale-3.0"):NewLocale("GSE", "koKR")

-- Options translation
--[[Translation missing --]]
L["  The Alternative ClassID is "] = "  The Alternative ClassID is "
--[[Translation missing --]]
L[" Deleted Orphaned Macro "] = " Deleted Orphaned Macro "
--[[Translation missing --]]
L[" from "] = " from "
--[[Translation missing --]]
L[" has been added as a new version and set to active.  Please review if this is as expected."] = " has been added as a new version and set to active.  Please review if this is as expected."
--[[Translation missing --]]
L[" is not available.  Unable to translate sequence "] = " is not available.  Unable to translate sequence "
--[[Translation missing --]]
L[" macros per Account.  You currently have "] = " macros per Account.  You currently have "
--[[Translation missing --]]
L[" macros per character.  You currently have "] = " macros per character.  You currently have "
--[[Translation missing --]]
L[" saved as version "] = " saved as version "
--[[Translation missing --]]
L[" sent"] = " sent"
--[[Translation missing --]]
L[" tried to overwrite the version already loaded from "] = " tried to overwrite the version already loaded from "
--[[Translation missing --]]
L[" was imported as a new macro."] = " was imported as a new macro."
--[[Translation missing --]]
L[" was imported with the following errors."] = " was imported with the following errors."
L[" was updated to new version."] = "|1이;가; 새 버전으로 업데이트되었습니다."
--[[Translation missing --]]
L[". This version was not loaded."] = ". This version was not loaded."
--[[Translation missing --]]
L["/gs |r to get started."] = "/gs |r to get started."
--[[Translation missing --]]
L["/gs checkmacrosforerrors|r will loop through your macros and check for corrupt macro versions.  This will then show how to correct these issues."] = "/gs checkmacrosforerrors|r will loop through your macros and check for corrupt macro versions.  This will then show how to correct these issues."
--[[Translation missing --]]
L["/gs cleanorphans|r will loop through your macros and delete any left over GS-E macros that no longer have a sequence to match them."] = "/gs cleanorphans|r will loop through your macros and delete any left over GS-E macros that no longer have a sequence to match them."
L["/gs help|r to get started."] = " /gs help|r를 입력하세요."
--[[Translation missing --]]
L["/gs listall|r will produce a list of all available macros with some help information."] = "/gs listall|r will produce a list of all available macros with some help information."
--[[Translation missing --]]
L["/gs showspec|r will show your current Specialisation and the SPECID needed to tag any existing macros."] = "/gs showspec|r will show your current Specialisation and the SPECID needed to tag any existing macros."
--[[Translation missing --]]
L["/gs|r again."] = "/gs|r again."
--[[Translation missing --]]
L["/gs|r will list any macros available to your spec.  This will also add any macros available for your current spec to the macro interface."] = "/gs|r will list any macros available to your spec.  This will also add any macros available for your current spec to the macro interface."
--[[Translation missing --]]
L[":|r The Sequence Translator allows you to use GS-E on other languages than enUS.  It will translate sequences to match your language.  If you also have the Sequence Editor you can translate sequences between languages.  The GS-E Sequence Translator is available on curse.com"] = ":|r The Sequence Translator allows you to use GS-E on other languages than enUS.  It will translate sequences to match your language.  If you also have the Sequence Editor you can translate sequences between languages.  The GS-E Sequence Translator is available on curse.com"
--[[Translation missing --]]
L[":|r To get started "] = ":|r To get started "
--[[Translation missing --]]
L[":|r You cannot delete the only copy of a sequence."] = ":|r You cannot delete the only copy of a sequence."
--[[Translation missing --]]
L[":|r Your current Specialisation is "] = ":|r Your current Specialisation is "
L["|cffff0000GS-E:|r Gnome Sequencer - Enhanced Options"] = "|cffff0000GS-E:|r Gnome Sequencer - 고급 옵션"
--[[Translation missing --]]
L["|r Incomplete Sequence Definition - This sequence has no further information "] = "|r Incomplete Sequence Definition - This sequence has no further information "
--[[Translation missing --]]
L["|r.  As a result this macro was not created.  Please delete some macros and reenter "] = "|r.  As a result this macro was not created.  Please delete some macros and reenter "
--[[Translation missing --]]
L["|r.  You can also have a  maximum of "] = "|r.  You can also have a  maximum of "
L["<DEBUG> |r "] = "<디버그> |r"
--[[Translation missing --]]
L["<SEQUENCEDEBUG> |r "] = "<SEQUENCEDEBUG> |r "
--[[Translation missing --]]
L["A new version of %s has been added."] = "A new version of %s has been added."
--[[Translation missing --]]
L["A sequence collision has occured. "] = "A sequence collision has occured. "
--[[Translation missing --]]
L["A sequence collision has occured.  Extra versions of this macro have been loaded.  Manage the sequence to determine how to use them "] = "A sequence collision has occured.  Extra versions of this macro have been loaded.  Manage the sequence to determine how to use them "
--[[Translation missing --]]
L["A sequence collision has occured.  Your local version of "] = "A sequence collision has occured.  Your local version of "
L["About"] = "정보"
L["About GSE"] = "GSE 정보"
--[[Translation missing --]]
L["Actions"] = "Actions"
--[[Translation missing --]]
L["Active Version: "] = "Active Version: "
--[[Translation missing --]]
L["Add a substitution variable for this macro.  This can either be a straight string swap or can be a function.  If a lua function the function needs to return a value."] = "Add a substitution variable for this macro.  This can either be a straight string swap or can be a function.  If a lua function the function needs to return a value."
L["Add Variable"] = "변수 추가"
L["Add WeakAura"] = "WeakAura 추가"
--[[Translation missing --]]
L["Addin Version %s contained versions for the following macros:"] = "Addin Version %s contained versions for the following macros:"
--[[Translation missing --]]
L["All macros are now stored as upper case names.  You may need to re-add your old macros to your action bars."] = "All macros are now stored as upper case names.  You may need to re-add your old macros to your action bars."
--[[Translation missing --]]
L["Alt Keys."] = "Alt Keys."
L["Any Alt Key"] = "Alt 키"
L["Any Control Key"] = "Ctrl 키"
L["Any Shift Key"] = "Shift 키"
--[[Translation missing --]]
L["Are you sure you want to delete %s?  This will delete the macro and all versions.  This action cannot be undone."] = "Are you sure you want to delete %s?  This will delete the macro and all versions.  This action cannot be undone."
L["Arena"] = "투기장"
--[[Translation missing --]]
L["Arena setting changed to Default."] = "Arena setting changed to Default."
--[[Translation missing --]]
L["As GS-E is updated, there may be left over macros that no longer relate to sequences.  This will check for these automatically on logout.  Alternatively this check can be run via /gs cleanorphans"] = "As GS-E is updated, there may be left over macros that no longer relate to sequences.  This will check for these automatically on logout.  Alternatively this check can be run via /gs cleanorphans"
--[[Translation missing --]]
L["Auras included in GSE Macros"] = "Auras included in GSE Macros"
L["Author"] = "작성자"
L["Author Colour"] = "작성자 색상"
--[[Translation missing --]]
L["Auto Create Class Macro Stubs"] = "Auto Create Class Macro Stubs"
--[[Translation missing --]]
L["Auto Create Global Macro Stubs"] = "Auto Create Global Macro Stubs"
--[[Translation missing --]]
L["Automatically Create Macro Icon"] = "Automatically Create Macro Icon"
--[[Translation missing --]]
L["Available Addons"] = "Available Addons"
L["Belt"] = "허리"
L["Blizzard Functions Colour"] = "블리자드 함수 색상"
--[[Translation missing --]]
L["By setting the default Icon for all macros to be the QuestionMark, the macro button on your toolbar will change every key hit."] = "By setting the default Icon for all macros to be the QuestionMark, the macro button on your toolbar will change every key hit."
--[[Translation missing --]]
L["By setting this value the Sequence Editor will show every macro for every class."] = "By setting this value the Sequence Editor will show every macro for every class."
--[[Translation missing --]]
L["By setting this value the Sequence Editor will show every macro for your class.  Turning this off will only show the class macros for your current specialisation."] = "By setting this value the Sequence Editor will show every macro for your class.  Turning this off will only show the class macros for your current specialisation."
L["Cancel"] = "취소"
--[[Translation missing --]]
L["CheckMacroCreated"] = "Check Macro Created"
--[[Translation missing --]]
L["Checks to see if you have a Heart of Azeroth equipped and if so will insert '/cast Heart Essence' into the macro.  If not your macro will skip this line."] = "Checks to see if you have a Heart of Azeroth equipped and if so will insert '/cast Heart Essence' into the macro.  If not your macro will skip this line."
--[[Translation missing --]]
L["Choose import action:"] = "Choose import action:"
L["Choose Language"] = "언어 선택"
--[[Translation missing --]]
L["Classwide Macro"] = "Classwide Macro"
L["Clear"] = "지우기"
L["Clear Common Keybindings"] = "공통 단축키 설정 지우기"
L["Clear Errors"] = "오류 지우기"
L["Clear Keybindings"] = "단축키 설정 지우기"
L["Close"] = "닫기"
--[[Translation missing --]]
L["Close to Maximum Macros.|r  You can have a maximum of "] = "Close to Maximum Macros.|r  You can have a maximum of "
--[[Translation missing --]]
L["Close to Maximum Personal Macros.|r  You can have a maximum of "] = "Close to Maximum Personal Macros.|r  You can have a maximum of "
L["Colour"] = "색상"
L["Colour and Accessibility Options"] = "색상 및 접근성 옵션"
L["Combat"] = "전투"
L["Command Colour"] = "명령어 색상"
L["Completely New GS Macro."] = "완전히 새로운 GS 매크로입니다."
--[[Translation missing --]]
L["Compress"] = "Compress"
--[[Translation missing --]]
L["Compress Sequence from Forums"] = "Compress Sequence from Forums"
L["Conditionals Colour"] = "조건부 색상"
L["Configuration"] = "구성"
--[[Translation missing --]]
L["Continue"] = "Continue"
--[[Translation missing --]]
L["Contributed by: "] = "Contributed by: "
--[[Translation missing --]]
L["Control Keys."] = "Control Keys."
--[[Translation missing --]]
L["Copy this link and open it in a Browser."] = "Copy this link and open it in a Browser."
L["Create a new macro."] = "새 매크로를 만듭니다."
--[[Translation missing --]]
L["Create buttons for Global Macros"] = "Create buttons for Global Macros"
L["Create Icon"] = "아이콘 생성"
L["Create Macro"] = "매크로 생성"
--[[Translation missing --]]
L[ [=[Create or remove a Macro stub in /macro that can be dragged to your action bar so that you can use this macro.
GSE can store an unlimited number of macros however WOW's /macro interface can only store a limited number of macros.]=] ] = [=[Create or remove a Macro stub in /macro that can be dragged to your action bar so that you can use this macro.
GSE can store an unlimited number of macros however WOW's /macro interface can only store a limited number of macros.]=]
--[[Translation missing --]]
L["Creating New Sequence."] = "Creating New Sequence."
L["Current GCD"] = "현재 전역 재사용 대기시간"
L["Current GCD: %s"] = "현재 전역 재사용 대기시간: %s"
L["Debug"] = "디버그"
L["Debug Mode Options"] = "디버그 모드 옵션"
L["Debug Output Options"] = "디버그 출력 옵션"
--[[Translation missing --]]
L["Debug Sequence Execution"] = "Debug Sequence Execution"
--[[Translation missing --]]
L["Decompress"] = "Decompress"
L["Default Editor Height"] = "기본 편집기 높이"
L["Default Editor Width"] = "기본 편집기 너비"
L["Default Import Action"] = "기본 가져오기 동작"
--[[Translation missing --]]
L["Default Version"] = "Default Version"
--[[Translation missing --]]
L["Del"] = "Del"
L["Delete"] = "삭제"
L["Delete Icon"] = "아이콘 삭제"
--[[Translation missing --]]
L["Delete Orphaned Macros on Logout"] = "Delete Orphaned Macros on Logout"
--[[Translation missing --]]
L["Delete this macro.  This is not able to be undone."] = "Delete this macro.  This is not able to be undone."
--[[Translation missing --]]
L["Delete this variable from the sequence."] = "Delete this variable from the sequence."
--[[Translation missing --]]
L[ [=[Delete this verion of the macro.  This can be undone by closing this window and not saving the change.  
This is different to the Delete button below which will delete this entire macro.]=] ] = [=[Delete this verion of the macro.  This can be undone by closing this window and not saving the change.  
This is different to the Delete button below which will delete this entire macro.]=]
--[[Translation missing --]]
L["Delete this WeakAura from the sequence."] = "Delete this WeakAura from the sequence."
L["Delete Variable"] = "변수 삭제"
L["Delete Version"] = "버전 삭제"
L["Delete WeakAura"] = "WeakAura 삭제"
--[[Translation missing --]]
L["Different helpTxt"] = "Different helpTxt"
--[[Translation missing --]]
L["Disable"] = "Disable"
L["Disable Editor"] = "편집기 사용 안 함"
L["Disable Sequence"] = "시퀀스 사용 안 함"
L["Display debug messages in Chat Window"] = "디버그 메시지 채팅창에 표시"
--[[Translation missing --]]
L["Don't Translate Sequences"] = "Don't Translate Sequences"
L["Drag this icon to your action bar to use this macro. You can change this icon in the /macro window."] = "이 매크로를 사용하려면 행동 단축바에 이 아이콘을 끌어다 놓으세요. /macro 창에서 이 아이콘을 바꿀 수 있습니다."
L["Dungeon"] = "던전"
--[[Translation missing --]]
L["Dungeon setting changed to Default."] = "Dungeon setting changed to Default."
L["Edit"] = "편집"
--[[Translation missing --]]
L["Edit this macro.  To delete a macro, choose this edit option and then from inside hit the delete button."] = "Edit this macro.  To delete a macro, choose this edit option and then from inside hit the delete button."
L["Editor Colours"] = "편집기 색상"
L["Emphasis Colour"] = "강조 색상"
--[[Translation missing --]]
L["Enable"] = "Enable"
L["Enable Debug for the following Modules"] = "다음 모듈에 대해 디버그 사용"
--[[Translation missing --]]
L["Enable Mod Debug Mode"] = "Enable Mod Debug Mode"
L["Enable Sequence"] = "시퀀스 사용"
--[[Translation missing --]]
L["Enable this option to stop automatically translating sequences from enUS to local language."] = "Enable this option to stop automatically translating sequences from enUS to local language."
--[[Translation missing --]]
L["Enable timing functions by using Click refresh speed as a pseudo timer."] = "Enable timing functions by using Click refresh speed as a pseudo timer."
--[[Translation missing --]]
L["Enforce GSE minimum version for this macro"] = "Enforce GSE minimum version for this macro"
--[[Translation missing --]]
L["Error found in version %i of %s."] = "Error found in version %i of %s."
L["Export"] = "내보내기"
L["Export a Sequence"] = "시퀀스 내보내기"
--[[Translation missing --]]
L["Export Macro Read Only"] = "Export Macro Read Only"
L["Export this Macro."] = "이 매크로를 내보냅니다."
--[[Translation missing --]]
L["Extra Macro Versions of %s has been added."] = "Extra Macro Versions of %s has been added."
--[[Translation missing --]]
L["Filter Macro Selection"] = "Filter Macro Selection"
--[[Translation missing --]]
L["Finished scanning for errors.  If no other messages then no errors were found."] = "Finished scanning for errors.  If no other messages then no errors were found."
--[[Translation missing --]]
L["Format export for WLM Forums"] = "Format export for WLM Forums"
--[[Translation missing --]]
L["FYou cannot delete this version of a sequence.  This version will be reloaded as it is contained in "] = "FYou cannot delete this version of a sequence.  This version will be reloaded as it is contained in "
L["Gameplay Options"] = "게임 플레이 옵션"
L["General"] = "일반"
L["General Options"] = "일반 옵션"
--[[Translation missing --]]
L["Global Macros are those that are valid for all classes.  GSE2 also imports unknown macros as Global.  This option will create a button for these macros so they can be called for any class.  Having all macros in this space is a performance loss hence having them saved with a the right specialisation is important."] = "Global Macros are those that are valid for all classes.  GSE2 also imports unknown macros as Global.  This option will create a button for these macros so they can be called for any class.  Having all macros in this space is a performance loss hence having them saved with a the right specialisation is important."
--[[Translation missing --]]
L["Gnome Sequencer: Compress a Sequence String."] = "Gnome Sequencer: Compress a Sequence String."
--[[Translation missing --]]
L["Gnome Sequencer: Export a Sequence String."] = "Gnome Sequencer: Export a Sequence String."
--[[Translation missing --]]
L["Gnome Sequencer: Import a Macro String."] = "Gnome Sequencer: Import a Macro String."
--[[Translation missing --]]
L["Gnome Sequencer: Record your rotation to a macro."] = "Gnome Sequencer: Record your rotation to a macro."
--[[Translation missing --]]
L["Gnome Sequencer: Sequence Debugger. Monitor the Execution of your Macro"] = "Gnome Sequencer: Sequence Debugger. Monitor the Execution of your Macro"
--[[Translation missing --]]
L["Gnome Sequencer: Sequence Editor."] = "Gnome Sequencer: Sequence Editor."
--[[Translation missing --]]
L["Gnome Sequencer: Sequence Version Manager"] = "Gnome Sequencer: Sequence Version Manager"
--[[Translation missing --]]
L["Gnome Sequencer: Sequence Viewer"] = "Gnome Sequencer: Sequence Viewer"
--[[Translation missing --]]
L["GnomeSequencer was originally written by semlar of wowinterface.com."] = "GnomeSequencer was originally written by semlar of wowinterface.com."
--[[Translation missing --]]
L["GnomeSequencer-Enhanced"] = "GnomeSequencer-Enhanced"
L["GnomeSequencer-Enhanced loaded.|r  Type "] = "GnomeSequencer-Enhanced를 불러왔습니다.|r 시작하려면"
L["GSE"] = "GSE"
--[[Translation missing --]]
L["GSE - %s's Macros"] = "GSE - %s's Macros"
--[[Translation missing --]]
L["GSE allows plugins to load Macro Collections as plugins.  You can reload a collection by pressing the button below."] = "GSE allows plugins to load Macro Collections as plugins.  You can reload a collection by pressing the button below."
--[[Translation missing --]]
L["GS-E can save all macros or only those versions that you have created locally.  Turning this off will cache all macros in your WTF\\GS-Core.lua variables file but will increase load times and potentially cause colissions."] = "GS-E can save all macros or only those versions that you have created locally.  Turning this off will cache all macros in your WTF\\GS-Core.lua variables file but will increase load times and potentially cause colissions."
L["GSE has a LibDataBroker (LDB) data feed.  List Other GSE Users and their version when in a group on the tooltip to this feed."] = "GSE에는 LibDataBroker (LDB) 데이터 피드가 있습니다. 그룹에 있는 경우 다른 GSE 사용자와 해당 버전을 이 피드의 툴팁에 나열합니다."
L["GSE has a LibDataBroker (LDB) data feed.  Set this option to show queued Out of Combat events in the tooltip."] = "GSE에는 LibDataBroker (LDB) 데이터 피드가 있습니다. 툴팁에 대기 중인 비전투 중 이벤트를 표시하려면 이 옵션을 설정하세요."
--[[Translation missing --]]
L["GSE is a complete rewrite of that addon that allows you create a sequence of macros to be executed at the push of a button."] = "GSE is a complete rewrite of that addon that allows you create a sequence of macros to be executed at the push of a button."
--[[Translation missing --]]
L["GSE is out of date. You can download the newest version from https://mods.curse.com/addons/wow/gnomesequencer-enhanced."] = "GSE is out of date. You can download the newest version from https://mods.curse.com/addons/wow/gnomesequencer-enhanced."
--[[Translation missing --]]
L["GSE is out of date. You can download the newest version from https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros."] = "GSE is out of date. You can download the newest version from https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros."
L["GSE Macro"] = "GSE 매크로"
L["GS-E Plugins"] = "GS-E 플러그인"
--[[Translation missing --]]
L["GSE stores the base spell and asks WoW to use that ability.  WoW will then choose the current version of the spell.  This toggle switches between showing the Base Spell or the Current Spell."] = "GSE stores the base spell and asks WoW to use that ability.  WoW will then choose the current version of the spell.  This toggle switches between showing the Base Spell or the Current Spell."
L["GSE Users"] = "GSE 사용자"
L["GSE Version: %s"] = "GSE 버전: %s"
--[[Translation missing --]]
L[ [=[GSE was originally forked from GnomeSequencer written by semlar.  It was enhanced by TImothyLuke to include a lot of configuration and boilerplate functionality with a GUI added.  The enhancements pushed the limits of what the original code could handle and was rewritten from scratch into GSE.

GSE itself wouldn't be what it is without the efforts of the people who write macros with it.  Check out https://wowlazymacros.com for the things that make this mod work.  Special thanks to Lutechi for creating this community.]=] ] = [=[GSE was originally forked from GnomeSequencer written by semlar.  It was enhanced by TImothyLuke to include a lot of configuration and boilerplate functionality with a GUI added.  The enhancements pushed the limits of what the original code could handle and was rewritten from scratch into GSE.

GSE itself wouldn't be what it is without the efforts of the people who write macros with it.  Check out https://wowlazymacros.com for the things that make this mod work.  Special thanks to Lutechi for creating this community.]=]
--[[Translation missing --]]
L["GSE: Import a Macro String."] = "GSE: Import a Macro String."
--[[Translation missing --]]
L["GSE: Left Click to open the Sequence Editor"] = "GSE: Left Click to open the Sequence Editor"
--[[Translation missing --]]
L["GS-E: Left Click to open the Sequence Editor"] = "GS-E: Left Click to open the Sequence Editor"
--[[Translation missing --]]
L["GSE: Middle Click to open the Transmission Interface"] = "GSE: Middle Click to open the Transmission Interface"
--[[Translation missing --]]
L["GS-E: Middle Click to open the Transmission Interface"] = "GS-E: Middle Click to open the Transmission Interface"
--[[Translation missing --]]
L["GSE: Right Click to open the Sequence Debugger"] = "GSE: Right Click to open the Sequence Debugger"
--[[Translation missing --]]
L["GS-E: Right Click to open the Sequence Debugger"] = "GS-E: Right Click to open the Sequence Debugger"
L["Head"] = "머리"
L["Help Colour"] = "도움말 색상"
L["Help Information"] = "도움말 정보"
L["Help Link"] = "도움말 링크"
L["Help URL"] = "도움말 URL"
L["Heroic"] = "영웅"
--[[Translation missing --]]
L["Heroic setting changed to Default."] = "Heroic setting changed to Default."
L["Hide Login Message"] = "접속 메시지 숨기기"
L["Hide Minimap Icon"] = "미니맵 아이콘 숨기기"
L["Hide Minimap Icon for LibDataBroker (LDB) data text."] = "LibDataBroker (LDB) 데이터 문자에 대한 미니맵 아이콘을 숨깁니다."
L["Hides the message that GSE is loaded."] = "GSE를 불러왔다는 메시지를 숨깁니다."
L["History"] = "역사"
--[[Translation missing --]]
L["How many pixels high should the Editor start at.  Defaults to 700"] = "How many pixels high should the Editor start at.  Defaults to 700"
--[[Translation missing --]]
L["How many pixels wide should the Editor start at.  Defaults to 700"] = "How many pixels wide should the Editor start at.  Defaults to 700"
L["Icon Colour"] = "아이콘 색상"
--[[Translation missing --]]
L["If you load Gnome Sequencer - Enhanced and the Sequence Editor and want to create new macros from scratch, this will enable a first cut sequenced template that you can load into the editor as a starting point.  This enables a Hello World macro called Draik01.  You will need to do a /console reloadui after this for this to take effect."] = "If you load Gnome Sequencer - Enhanced and the Sequence Editor and want to create new macros from scratch, this will enable a first cut sequenced template that you can load into the editor as a starting point.  This enables a Hello World macro called Draik01.  You will need to do a /console reloadui after this for this to take effect."
L["Ignore"] = "무시"
L["Import"] = "가져오기"
L["Import Macro from Forums"] = "포럼에서 매크로 가져오기"
--[[Translation missing --]]
L["Imported new sequence "] = "Imported new sequence "
--[[Translation missing --]]
L["Incorporate the belt slot into the KeyRelease. This is the equivalent of /use [combat] 5 in a KeyRelease."] = "Incorporate the belt slot into the KeyRelease. This is the equivalent of /use [combat] 5 in a KeyRelease."
--[[Translation missing --]]
L["Incorporate the first ring slot into the KeyRelease. This is the equivalent of /use [combat] 11 in a KeyRelease."] = "Incorporate the first ring slot into the KeyRelease. This is the equivalent of /use [combat] 11 in a KeyRelease."
--[[Translation missing --]]
L["Incorporate the first trinket slot into the KeyRelease. This is the equivalent of /use [combat] 13 in a KeyRelease."] = "Incorporate the first trinket slot into the KeyRelease. This is the equivalent of /use [combat] 13 in a KeyRelease."
--[[Translation missing --]]
L["Incorporate the Head slot into the KeyRelease. This is the equivalent of /use [combat] 1 in a KeyRelease."] = "Incorporate the Head slot into the KeyRelease. This is the equivalent of /use [combat] 1 in a KeyRelease."
--[[Translation missing --]]
L["Incorporate the neck slot into the KeyRelease. This is the equivalent of /use [combat] 2 in a KeyRelease."] = "Incorporate the neck slot into the KeyRelease. This is the equivalent of /use [combat] 2 in a KeyRelease."
--[[Translation missing --]]
L["Incorporate the second ring slot into the KeyRelease. This is the equivalent of /use [combat] 12 in a KeyRelease."] = "Incorporate the second ring slot into the KeyRelease. This is the equivalent of /use [combat] 12 in a KeyRelease."
--[[Translation missing --]]
L["Incorporate the second trinket slot into the KeyRelease. This is the equivalent of /use [combat] 14 in a KeyRelease."] = "Incorporate the second trinket slot into the KeyRelease. This is the equivalent of /use [combat] 14 in a KeyRelease."
--[[Translation missing --]]
L["Inner Loop End"] = "Inner Loop End"
--[[Translation missing --]]
L["Inner Loop Limit"] = "Inner Loop Limit"
--[[Translation missing --]]
L[ [=[Inner Loop Limit controls how many times the Sequence part of your macro executes 
until it goes onto to the PostMacro and then resets to the PreMacro.]=] ] = [=[Inner Loop Limit controls how many times the Sequence part of your macro executes 
until it goes onto to the PostMacro and then resets to the PreMacro.]=]
--[[Translation missing --]]
L["Inner Loop Start"] = "Inner Loop Start"
--[[Translation missing --]]
L["KeyPress"] = "KeyPress"
--[[Translation missing --]]
L["KeyRelease"] = "KeyRelease"
L["Language"] = "언어"
L["Language Colour"] = "언어 색상"
L["Left Alt Key"] = "왼쪽 Alt 키"
L["Left Control Key"] = "왼쪽 Ctrl 키"
L["Left Mouse Button"] = "마우스 왼쪽 버튼"
L["Left Shift Key"] = "왼쪽 Shift 키"
--[[Translation missing --]]
L["Legacy GS/GSE1 Macro"] = "Legacy GS/GSE1 Macro"
--[[Translation missing --]]
L["Like a /castsequence macro, it cycles through a series of commands when the button is pushed. However, unlike castsequence, it uses macro text for the commands instead of spells, and it advances every time the button is pushed instead of stopping when it can't cast something."] = "Like a /castsequence macro, it cycles through a series of commands when the button is pushed. However, unlike castsequence, it uses macro text for the commands instead of spells, and it advances every time the button is pushed instead of stopping when it can't cast something."
L["Load"] = "불러오기"
--[[Translation missing --]]
L["Load or update this WeakAura into WeakAuras."] = "Load or update this WeakAura into WeakAuras."
--[[Translation missing --]]
L["Load Sequence"] = "Load Sequence"
L["Load WeakAura"] = "WeakAura 불러오기"
--[[Translation missing --]]
L["Local Macro"] = "Local Macro"
--[[Translation missing --]]
L["Macro Collection to Import."] = "Macro Collection to Import."
--[[Translation missing --]]
L["Macro found by the name %sPVP%s. Rename this macro to a different name to be able to use it.  WOW has a global object called PVP that is referenced instead of this macro."] = "Macro found by the name %sPVP%s. Rename this macro to a different name to be able to use it.  WOW has a global object called PVP that is referenced instead of this macro."
--[[Translation missing --]]
L["Macro found by the name %sWW%s. Rename this macro to a different name to be able to use it.  WOW has a hidden button called WW that is executed instead of this macro."] = "Macro found by the name %sWW%s. Rename this macro to a different name to be able to use it.  WOW has a hidden button called WW that is executed instead of this macro."
L["Macro Icon"] = "매크로 아이콘"
--[[Translation missing --]]
L["Macro Import Successful."] = "Macro Import Successful."
L["Macro Reset"] = "매크로 초기화"
--[[Translation missing --]]
L["Macro unable to be imported."] = "Macro unable to be imported."
L["Macro Variables"] = "매크로 변수"
--[[Translation missing --]]
L["Macro Version %d deleted."] = "Macro Version %d deleted."
--[[Translation missing --]]
L["Make Active"] = "Make Active"
--[[Translation missing --]]
L["Manage Versions"] = "Manage Versions"
--[[Translation missing --]]
L["Matching helpTxt"] = "Matching helpTxt"
--[[Translation missing --]]
L["Merge"] = "Merge"
--[[Translation missing --]]
L["MergeSequence"] = "MergeSequence"
L["Middle Mouse Button"] = "마우스 가운데 버튼"
L["Millisecond click settings"] = "밀리초 클릭 설정"
L["Mouse Button 4"] = "4번 마우스 버튼"
L["Mouse Button 5"] = "5번 마우스 버튼"
L["Mouse Buttons."] = "마우스 버튼입니다."
--[[Translation missing --]]
L["Moved %s to class %s."] = "Moved %s to class %s."
--[[Translation missing --]]
L["MS Click Rate"] = "MS Click Rate"
L["Mythic"] = "신화"
--[[Translation missing --]]
L["Mythic setting changed to Default."] = "Mythic setting changed to Default."
L["Mythic+"] = "쐐기"
--[[Translation missing --]]
L["Mythic+ setting changed to Default."] = "Mythic+ setting changed to Default."
L["Name"] = "이름"
L["Neck"] = "목"
L["New"] = "새로 만들기"
--[[Translation missing --]]
L["New Sequence Name"] = "New Sequence Name"
L["No"] = "아니오"
--[[Translation missing --]]
L["No Active Version"] = "No Active Version"
--[[Translation missing --]]
L["No changes were made to "] = "No changes were made to "
L["No Help Information "] = "도움말 정보 없음"
L["No Help Information Available"] = "이용 가능한 도움말 정보 없음"
--[[Translation missing --]]
L["No Sample Macros are available yet for this class."] = "No Sample Macros are available yet for this class."
--[[Translation missing --]]
L["No Sequences present so none displayed in the list."] = "No Sequences present so none displayed in the list."
L["Normal Colour"] = "일반 색상"
--[[Translation missing --]]
L["Notes and help on how this macro works.  What things to remember.  This information is shown in the sequence browser."] = "Notes and help on how this macro works.  What things to remember.  This information is shown in the sequence browser."
--[[Translation missing --]]
L["Only Save Local Macros"] = "Only Save Local Macros"
L["Opens the GSE Options window"] = "GSE 옵션창을 엽니다."
--[[Translation missing --]]
L["openviewer"] = "Open Viewer"
L["Options"] = "옵션"
--[[Translation missing --]]
L["Options have been reset to defaults."] = "Options have been reset to defaults."
L["Output"] = "출력"
--[[Translation missing --]]
L["Output the action for each button press to verify StepFunction and spell availability."] = "Output the action for each button press to verify StepFunction and spell availability."
L["Party"] = "파티"
--[[Translation missing --]]
L["Party setting changed to Default."] = "Party setting changed to Default."
L["Pause"] = "중지"
--[[Translation missing --]]
L["Paused"] = "Paused"
--[[Translation missing --]]
L["Paused - In Combat"] = "Paused - In Combat"
--[[Translation missing --]]
L["Picks a Custom Colour for emphasis."] = "Picks a Custom Colour for emphasis."
L["Picks a Custom Colour for the Author."] = "작성자용 사용자 정의 색상을 고릅니다."
--[[Translation missing --]]
L["Picks a Custom Colour for the Commands."] = "Picks a Custom Colour for the Commands."
--[[Translation missing --]]
L["Picks a Custom Colour for the Mod Names."] = "Picks a Custom Colour for the Mod Names."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for braces and indents."] = "Picks a Custom Colour to be used for braces and indents."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for Icons."] = "Picks a Custom Colour to be used for Icons."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for language descriptors"] = "Picks a Custom Colour to be used for language descriptors"
--[[Translation missing --]]
L["Picks a Custom Colour to be used for macro conditionals eg [mod:shift]"] = "Picks a Custom Colour to be used for macro conditionals eg [mod:shift]"
--[[Translation missing --]]
L["Picks a Custom Colour to be used for Macro Keywords like /cast and /target"] = "Picks a Custom Colour to be used for Macro Keywords like /cast and /target"
--[[Translation missing --]]
L["Picks a Custom Colour to be used for numbers."] = "Picks a Custom Colour to be used for numbers."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for Spells and Abilities."] = "Picks a Custom Colour to be used for Spells and Abilities."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for StepFunctions."] = "Picks a Custom Colour to be used for StepFunctions."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for strings."] = "Picks a Custom Colour to be used for strings."
--[[Translation missing --]]
L["Picks a Custom Colour to be used for unknown terms."] = "Picks a Custom Colour to be used for unknown terms."
--[[Translation missing --]]
L["Picks a Custom Colour to be used normally."] = "Picks a Custom Colour to be used normally."
--[[Translation missing --]]
L["Please wait till you have left combat before using the Sequence Editor."] = "Please wait till you have left combat before using the Sequence Editor."
L["Plugins"] = "플러그인"
--[[Translation missing --]]
L["PostMacro"] = "PostMacro"
--[[Translation missing --]]
L["PreMacro"] = "PreMacro"
L["Prevent Sound Errors"] = "소리 오류 방지"
L["Prevent UI Errors"] = "UI 오류 방지"
L["Print KeyPress Modifiers on Click"] = "클릭 시 키눌림 보조키 출력"
L["Print to the chat window if the alt, shift, control modifiers as well as the button pressed on each macro keypress."] = "Alt, Shift, Ctrl 보조키뿐만 아니라 각 매크로 키를 누를 때 버튼을 누르면 채팅창에 출력합니다."
L["Priority List (1 12 123 1234)"] = "우선순위 목록 (1 12 123 1234)"
--[[Translation missing --]]
L["Prompt Samples"] = "Prompt Samples"
--[[Translation missing --]]
L["PVP"] = "PVP"
--[[Translation missing --]]
L["PVP setting changed to Default."] = "PVP setting changed to Default."
L["Raid"] = "공격대"
--[[Translation missing --]]
L["Raid setting changed to Default."] = "Raid setting changed to Default."
--[[Translation missing --]]
L["Random - It will select .... a spell, any spell"] = "Random - It will select .... a spell, any spell"
--[[Translation missing --]]
L["Rank"] = "Rank"
--[[Translation missing --]]
L["Ready to Send"] = "Ready to Send"
--[[Translation missing --]]
L["Received Sequence "] = "Received Sequence "
L["Record"] = "기록"
L["Record Macro"] = "매크로 기록"
L["Record the spells and items you use into a new macro."] = "사용하는 주문과 아이템을 새 매크로에 기록합니다."
L["Registered Addons"] = "등록된 애드온"
L["Rename New Macro"] = "새 매크로 이름 바꾸기"
--[[Translation missing --]]
L["Replace"] = "Replace"
--[[Translation missing --]]
L["Request Macro"] = "Request Macro"
--[[Translation missing --]]
L["Request that the user sends you a copy of this macro."] = "Request that the user sends you a copy of this macro."
--[[Translation missing --]]
L["Require Target to use"] = "Require Target to use"
L["Reset Macro when out of combat"] = "비전투 중 매크로 초기화"
--[[Translation missing --]]
L["Reset this macro when you exit combat."] = "Reset this macro when you exit combat."
L["Resets"] = "초기화"
L["Resets macros back to the initial state when out of combat."] = "전투에서 벗어날 때 매크로를 초기 상태로 재설정합니다."
--[[Translation missing --]]
L["Resume"] = "Resume"
--[[Translation missing --]]
L["Returns your current Global Cooldown value accounting for your haste if that stat is present."] = "Returns your current Global Cooldown value accounting for your haste if that stat is present."
L["Right Alt Key"] = "오른쪽 Alt 키"
L["Right Control Key"] = "오른쪽 Ctrl 키"
L["Right Mouse Button"] = "마우스 오른쪽 버튼"
L["Right Shift Key"] = "오른쪽 Shift 키"
L["Ring 1"] = "손가락 1"
L["Ring 2"] = "손가락 2"
--[[Translation missing --]]
L["Running"] = "Running"
L["Save"] = "저장"
--[[Translation missing --]]
L["Save the changes made to this macro"] = "Save the changes made to this macro"
L["Scenario"] = "시나리오"
--[[Translation missing --]]
L["Scenario setting changed to Default."] = "Scenario setting changed to Default."
--[[Translation missing --]]
L["Seed Initial Macro"] = "Seed Initial Macro"
--[[Translation missing --]]
L["Select a Sequence"] = "Select a Sequence"
--[[Translation missing --]]
L["Select Other Version"] = "Select Other Version"
L["Send"] = "보내기"
L["Send this macro to another GSE player who is on the same server as you are."] = "이 매크로를 같은 서버에 있는 다른 GSE 플레이어에게 보냅니다."
--[[Translation missing --]]
L["Send To"] = "Send To"
L["Sequence"] = "시퀀스"
--[[Translation missing --]]
L["Sequence %s saved."] = "Sequence %s saved."
--[[Translation missing --]]
L["Sequence Author set to Unknown"] = "Sequence Author set to Unknown"
--[[Translation missing --]]
L["Sequence Compare"] = "Sequence Compare"
L["Sequence Debugger"] = "시퀀스 디버거"
L["Sequence Editor"] = "시퀀스 편집기"
L["Sequence Name"] = "시퀀스 이름"
--[[Translation missing --]]
L["Sequence Name %s is in Use. Please choose a different name."] = "Sequence Name %s is in Use. Please choose a different name."
--[[Translation missing --]]
L["Sequence Named %s was not specifically designed for this version of the game.  It may need adjustments."] = "Sequence Named %s was not specifically designed for this version of the game.  It may need adjustments."
--[[Translation missing --]]
L["Sequence Saved as version "] = "Sequence Saved as version "
--[[Translation missing --]]
L["Sequence specID set to current spec of "] = "Sequence specID set to current spec of "
--[[Translation missing --]]
L["Sequence to Compress."] = "Sequence to Compress."
--[[Translation missing --]]
L["Sequence Viewer"] = "Sequence Viewer"
--[[Translation missing --]]
L["Sequential (1 2 3 4)"] = "Sequential (1 2 3 4)"
--[[Translation missing --]]
L["Set Default Icon QuestionMark"] = "Set Default Icon QuestionMark"
--[[Translation missing --]]
L["Shift Keys."] = "Shift Keys."
--[[Translation missing --]]
L["Show All Macros in Editor"] = "Show All Macros in Editor"
--[[Translation missing --]]
L["Show Class Macros in Editor"] = "Show Class Macros in Editor"
L["Show Current Spells"] = "현재 주문 표시"
--[[Translation missing --]]
L["Show Global Macros in Editor"] = "Show Global Macros in Editor"
L["Show GSE Users in LDB"] = "GSE 사용자 LDB에 표시"
L["Show OOC Queue in LDB"] = "비전투 중 대기열 LDB에 표시"
--[[Translation missing --]]
L["Show the current value of this variable."] = "Show the current value of this variable."
--[[Translation missing --]]
L["Source Language "] = "Source Language "
L["Specialisation / Class ID"] = "전문화 / 직업 ID"
--[[Translation missing --]]
L["Specialization Specific Macro"] = "Specialization Specific Macro"
L["SpecID/ClassID Colour"] = "전문화ID/직업ID 색상"
L["Spell Colour"] = "주문 색상"
--[[Translation missing --]]
L["Step Function"] = "Step Function"
--[[Translation missing --]]
L["Step Functions"] = "Step Functions"
--[[Translation missing --]]
L["Stop"] = "Stop"
L["Store Debug Messages"] = "디버그 메시지 저장"
L["Store output of debug messages in a Global Variable that can be referrenced by other mods."] = "디버그 메시지의 출력을 다른 모드(mod)에서 참조할 수 있는 전역 변수에 저장합니다."
L["String Colour"] = "문자열 색상"
L["Supporters"] = "후원자"
L["System Variables"] = "시스템 변수"
L["Talents"] = "특성"
L["Target"] = "대상"
--[[Translation missing --]]
L["Target language "] = "Target language "
--[[Translation missing --]]
L["Target protection is currently %s"] = "Target protection is currently %s"
--[[Translation missing --]]
L["Test Variable"] = "Test Variable"
L["The author of this macro."] = "이 매크로 작성자입니다."
L["The command "] = "명령어"
--[[Translation missing --]]
L["The current result of variable |cff0000ff~~%s~~|r is |cFF00D1FF%s|r"] = "The current result of variable |cff0000ff~~%s~~|r is |cFF00D1FF%s|r"
--[[Translation missing --]]
L["The Custom StepFunction Specified is not recognised and has been ignored."] = "The Custom StepFunction Specified is not recognised and has been ignored."
L["The following people donate monthly via Patreon for the ongoing maintenance and development of GSE.  Their support is greatly appreciated."] = "다음 분들은 GSE의 지속적인 유지 및 개발을 위해 Patreon을 통해 매달 기부하고 있습니다. 후원 대단히 감사합니다."
--[[Translation missing --]]
L["The GSE Out of Combat queue is %s"] = "The GSE Out of Combat queue is %s"
--[[Translation missing --]]
L["The GUI has not been loaded.  Please activate this plugin amongst WoW's addons to use the GSE GUI."] = "The GUI has not been loaded.  Please activate this plugin amongst WoW's addons to use the GSE GUI."
--[[Translation missing --]]
L["The Macro Translator will translate an English sequence to your local language for execution.  It can also be used to translate a sequence into a different language.  It is also used for syntax based colour markup of Sequences in the editor."] = "The Macro Translator will translate an English sequence to your local language for execution.  It can also be used to translate a sequence into a different language.  It is also used for syntax based colour markup of Sequences in the editor."
--[[Translation missing --]]
L["The main lines of the macro."] = "The main lines of the macro."
--[[Translation missing --]]
L["The milliseconds being used in key click delay."] = "The milliseconds being used in key click delay."
--[[Translation missing --]]
L[ [=[The name of your macro.  This name has to be unique and can only be used for one object.
You can copy this entire macro by changing the name and choosing Save.]=] ] = [=[The name of your macro.  This name has to be unique and can only be used for one object.
You can copy this entire macro by changing the name and choosing Save.]=]
--[[Translation missing --]]
L["The Sample Macros have been reloaded."] = "The Sample Macros have been reloaded."
--[[Translation missing --]]
L["The Sequence Editor can attempt to parse the Sequences, KeyPress and KeyRelease in realtime.  This is still experimental so can be turned off."] = "The Sequence Editor can attempt to parse the Sequences, KeyPress and KeyRelease in realtime.  This is still experimental so can be turned off."
--[[Translation missing --]]
L["The Sequence Editor is an addon for GnomeSequencer-Enhanced that allows you to view and edit Sequences in game.  Type "] = "The Sequence Editor is an addon for GnomeSequencer-Enhanced that allows you to view and edit Sequences in game.  Type "
--[[Translation missing --]]
L[ [=[The step function determines how your macro executes.  Each time you click your macro GSE will go to the next line.  
The next line it chooses varies.  If Random then it will choose any line.  If Sequential it will go to the next line.  
If Priority it will try some spells more often than others.]=] ] = [=[The step function determines how your macro executes.  Each time you click your macro GSE will go to the next line.  
The next line it chooses varies.  If Random then it will choose any line.  If Sequential it will go to the next line.  
If Priority it will try some spells more often than others.]=]
--[[Translation missing --]]
L["The version of this macro that will be used when you enter raids."] = "The version of this macro that will be used when you enter raids."
--[[Translation missing --]]
L["The version of this macro that will be used where no other version has been configured."] = "The version of this macro that will be used where no other version has been configured."
--[[Translation missing --]]
L["The version of this macro to use in Arenas.  If this is not specified, GSE will look for a PVP version before the default."] = "The version of this macro to use in Arenas.  If this is not specified, GSE will look for a PVP version before the default."
--[[Translation missing --]]
L["The version of this macro to use in heroic dungeons."] = "The version of this macro to use in heroic dungeons."
--[[Translation missing --]]
L["The version of this macro to use in Mythic Dungeons."] = "The version of this macro to use in Mythic Dungeons."
--[[Translation missing --]]
L["The version of this macro to use in Mythic+ Dungeons."] = "The version of this macro to use in Mythic+ Dungeons."
--[[Translation missing --]]
L["The version of this macro to use in normal dungeons."] = "The version of this macro to use in normal dungeons."
--[[Translation missing --]]
L["The version of this macro to use in PVP."] = "The version of this macro to use in PVP."
--[[Translation missing --]]
L["The version of this macro to use in Scenarios."] = "The version of this macro to use in Scenarios."
--[[Translation missing --]]
L["The version of this macro to use when in a party in the world."] = "The version of this macro to use when in a party in the world."
--[[Translation missing --]]
L["The version of this macro to use when in time walking dungeons."] = "The version of this macro to use when in time walking dungeons."
--[[Translation missing --]]
L["There are %i events in out of combat queue"] = "There are %i events in out of combat queue"
--[[Translation missing --]]
L["There are no events in out of combat queue"] = "There are no events in out of combat queue"
L["There are No Macros Loaded for this class.  Would you like to load the Sample Macro?"] = "이 직업에 대해 불러온 매크로가 없습니다. 맛보기 매크로를 불러올까요?"
--[[Translation missing --]]
L["There is an issue with sequence %s.  It has not been loaded to prevent the mod from failing."] = "There is an issue with sequence %s.  It has not been loaded to prevent the mod from failing."
--[[Translation missing --]]
L[ [=[These lines are executed after the lines in the Sequence Box have been repeated Inner Loop Limit number of times.  If an Inner Loop Limit is not set, these are never executed as the sequence will never stop repeating.
The Sequence will then go on to the PreMacro if it exists then back to the Sequence.]=] ] = [=[These lines are executed after the lines in the Sequence Box have been repeated Inner Loop Limit number of times.  If an Inner Loop Limit is not set, these are never executed as the sequence will never stop repeating.
The Sequence will then go on to the PreMacro if it exists then back to the Sequence.]=]
--[[Translation missing --]]
L[ [=[These lines are executed before the lines in the Sequence Box.  If an Inner Loop Limit is not set, these are executed only once.  
If an Inner Loop Limit has been set these are executed after the Sequence has been looped through the number of times.  
The Sequence will then go on to the Post Macro if it exists then back to the PreMacro.]=] ] = [=[These lines are executed before the lines in the Sequence Box.  If an Inner Loop Limit is not set, these are executed only once.  
If an Inner Loop Limit has been set these are executed after the Sequence has been looped through the number of times.  
The Sequence will then go on to the Post Macro if it exists then back to the PreMacro.]=]
--[[Translation missing --]]
L["These lines are executed every time you click this macro.  They are evaluated by WOW after the line in the Sequence Box."] = "These lines are executed every time you click this macro.  They are evaluated by WOW after the line in the Sequence Box."
--[[Translation missing --]]
L["These lines are executed every time you click this macro.  They are evaluated by WOW before the line in the Sequence Box."] = "These lines are executed every time you click this macro.  They are evaluated by WOW before the line in the Sequence Box."
--[[Translation missing --]]
L["These options combine to allow you to reset a macro while it is running.  These options are Cumulative ie they add to each other.  Options Like LeftClick and RightClick won't work together very well."] = "These options combine to allow you to reset a macro while it is running.  These options are Cumulative ie they add to each other.  Options Like LeftClick and RightClick won't work together very well."
--[[Translation missing --]]
L["These tick boxes have three settings for each slot.  Gold = Definately use this item. Blank = Do not use this item automatically.  Silver = Either use or not based on my default settings store in GSE's Options."] = "These tick boxes have three settings for each slot.  Gold = Definately use this item. Blank = Do not use this item automatically.  Silver = Either use or not based on my default settings store in GSE's Options."
--[[Translation missing --]]
L["This change will not come into effect until you save this macro."] = "This change will not come into effect until you save this macro."
--[[Translation missing --]]
L["This function will remove the SHIFT+N, ALT+N and CTRL+N keybindings for this character.  Useful if [mod:shift] etc conditions don't work in game."] = "This function will remove the SHIFT+N, ALT+N and CTRL+N keybindings for this character.  Useful if [mod:shift] etc conditions don't work in game."
--[[Translation missing --]]
L["This function will update macro stubs to support listening to the options below.  This is required to be completed 1 time per character."] = "This function will update macro stubs to support listening to the options below.  This is required to be completed 1 time per character."
--[[Translation missing --]]
L["This is a small addon that allows you create a sequence of macros to be executed at the push of a button."] = "This is a small addon that allows you create a sequence of macros to be executed at the push of a button."
--[[Translation missing --]]
L["This is the only version of this macro.  Delete the entire macro to delete this version."] = "This is the only version of this macro.  Delete the entire macro to delete this version."
--[[Translation missing --]]
L["This macro uses features that are not available in this version. You need to update GSE to %s in order to use this macro."] = "This macro uses features that are not available in this version. You need to update GSE to %s in order to use this macro."
--[[Translation missing --]]
L["This option clears errors and stack traces ingame.  This is the equivalent of /run UIErrorsFrame:Clear() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."] = "This option clears errors and stack traces ingame.  This is the equivalent of /run UIErrorsFrame:Clear() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."
--[[Translation missing --]]
L["This option dumps extra trace information to your chat window to help troubleshoot problems with the mod"] = "This option dumps extra trace information to your chat window to help troubleshoot problems with the mod"
--[[Translation missing --]]
L["This option hide error sounds like \"That is out of range\" from being played while you are hitting a GS Macro.  This is the equivalent of /console Sound_EnableErrorSpeech lines within a Sequence.  Turning this on will trigger a Scam warning about running custom scripts."] = "This option hide error sounds like \"That is out of range\" from being played while you are hitting a GS Macro.  This is the equivalent of /console Sound_EnableErrorSpeech lines within a Sequence.  Turning this on will trigger a Scam warning about running custom scripts."
--[[Translation missing --]]
L["This option hides text error popups and dialogs and stack traces ingame.  This is the equivalent of /script UIErrorsFrame:Hide() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."] = "This option hides text error popups and dialogs and stack traces ingame.  This is the equivalent of /script UIErrorsFrame:Hide() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."
--[[Translation missing --]]
L["This option prevents macros firing unless you have a target. Helps reduce mistaken targeting of other mobs/groups when your target dies."] = "This option prevents macros firing unless you have a target. Helps reduce mistaken targeting of other mobs/groups when your target dies."
--[[Translation missing --]]
L["This sequence is Read Only and unable to be edited."] = "This sequence is Read Only and unable to be edited."
--[[Translation missing --]]
L["This Sequence was exported from GSE %s."] = "This Sequence was exported from GSE %s."
--[[Translation missing --]]
L["This shows the Global Macros available as well as those for your class."] = "This shows the Global Macros available as well as those for your class."
--[[Translation missing --]]
L["This version has been modified by TimothyLuke to make the power of GnomeSequencer avaialble to people who are not comfortable with lua programming."] = "This version has been modified by TimothyLuke to make the power of GnomeSequencer avaialble to people who are not comfortable with lua programming."
L["This will display debug messages for the "] = "디버그 메시지가 표시되는 모듈: "
--[[Translation missing --]]
L["This will display debug messages for the GS-E Ingame Transmission and transfer"] = "This will display debug messages for the GS-E Ingame Transmission and transfer"
L["This will display debug messages in the Chat window."] = "채팅창에 디버그 메시지를 출력합니다."
--[[Translation missing --]]
L["Timewalking"] = "Timewalking"
--[[Translation missing --]]
L["Timewalking setting changed to Default."] = "Timewalking setting changed to Default."
L["Title Colour"] = "제목 색상"
--[[Translation missing --]]
L["To correct this either delete the version via the GSE Editor or enter the following command to delete this macro totally.  %s/run GSE.DeleteSequence (%i, %s)%s"] = "To correct this either delete the version via the GSE Editor or enter the following command to delete this macro totally.  %s/run GSE.DeleteSequence (%i, %s)%s"
--[[Translation missing --]]
L["To get started "] = "To get started "
--[[Translation missing --]]
L["To use a macro, open the macros interface and create a macro with the exact same name as one from the list.  A new macro with two lines will be created and place this on your action bar."] = "To use a macro, open the macros interface and create a macro with the exact same name as one from the list.  A new macro with two lines will be created and place this on your action bar."
--[[Translation missing --]]
L["Translate to"] = "Translate to"
--[[Translation missing --]]
L["Translated Sequence"] = "Translated Sequence"
L["Trinket 1"] = "장신구 1"
L["Trinket 2"] = "장신구 2"
--[[Translation missing --]]
L["Two sequences with unknown sources found."] = "Two sequences with unknown sources found."
--[[Translation missing --]]
L["Unable to interpret sequence."] = "Unable to interpret sequence."
L["Unknown Author|r "] = "알 수 없는 작성자|r"
L["Unknown Colour"] = "알 수 없음 색상"
--[[Translation missing --]]
L["Update"] = "Update"
--[[Translation missing --]]
L["Update Macro Stubs"] = "Update Macro Stubs"
--[[Translation missing --]]
L["Update Macro Stubs."] = "Update Macro Stubs."
--[[Translation missing --]]
L["Updated Macro"] = "Updated Macro"
--[[Translation missing --]]
L["UpdateSequence"] = "Update Sequence"
--[[Translation missing --]]
L["Updating due to new version."] = "Updating due to new version."
L["Use"] = "사용"
--[[Translation missing --]]
L["Use Belt Item in KeyRelease"] = "Use Belt Item in KeyRelease"
--[[Translation missing --]]
L["Use External MS Timings"] = "Use External MS Timings"
--[[Translation missing --]]
L["Use First Ring in KeyRelease"] = "Use First Ring in KeyRelease"
--[[Translation missing --]]
L["Use First Trinket in KeyRelease"] = "Use First Trinket in KeyRelease"
L["Use Global Account Macros"] = "전역 계정 매크로 사용"
--[[Translation missing --]]
L["Use Head Item in KeyRelease"] = "Use Head Item in KeyRelease"
--[[Translation missing --]]
L["Use Macro Translator"] = "Use Macro Translator"
--[[Translation missing --]]
L["Use Neck Item in KeyRelease"] = "Use Neck Item in KeyRelease"
--[[Translation missing --]]
L["Use Realtime Parsing"] = "Use Realtime Parsing"
--[[Translation missing --]]
L["Use Second Ring in KeyRelease"] = "Use Second Ring in KeyRelease"
--[[Translation missing --]]
L["Use Second Trinket in KeyRelease"] = "Use Second Trinket in KeyRelease"
--[[Translation missing --]]
L["Use Verbose Export Sequence Format"] = "Use Verbose Export Sequence Format"
--[[Translation missing --]]
L["Use WLM Export Sequence Format"] = "Use WLM Export Sequence Format"
L["Value"] = "값"
L["Variables"] = "변수"
L["Version"] = "버전"
L["Version="] = "버전="
--[[Translation missing --]]
L["WARNING ONLY"] = "WARNING ONLY"
L["WeakAuras"] = "WeakAuras"
--[[Translation missing --]]
L["WeakAuras is a mod that watches for certain conditions and actions and they alerts the player to them occuring.  These are included for convenience and still need to be copied from here and imported to the WeakAuras mod via the command /wa."] = "WeakAuras is a mod that watches for certain conditions and actions and they alerts the player to them occuring.  These are included for convenience and still need to be copied from here and imported to the WeakAuras mod via the command /wa."
--[[Translation missing --]]
L["WeakAuras was not found."] = "WeakAuras was not found."
--[[Translation missing --]]
L["WeakAuras was not found.  Reported error was %s"] = "WeakAuras was not found.  Reported error was %s"
--[[Translation missing --]]
L["Website or forum URL where a player can get more information or ask questions about this macro."] = "Website or forum URL where a player can get more information or ask questions about this macro."
--[[Translation missing --]]
L[ [=[What are the preferred talents for this macro?
'1,2,3,1,2,3,1' means First row choose the first talent, Second row choose the second talent etc]=] ] = [=[What are the preferred talents for this macro?
'1,2,3,1,2,3,1' means First row choose the first talent, Second row choose the second talent etc]=]
--[[Translation missing --]]
L["What class or spec is this macro for?  If it is for all classes choose Global."] = "What class or spec is this macro for?  If it is for all classes choose Global."
L["When creating a macro, if there is not a personal character macro space, create an account wide macro."] = "매크로를 만들 때 개인 캐릭터 매크로 공간이 없으면 계정 전체 매크로를 만듭니다."
--[[Translation missing --]]
L["When exporting a sequence create a stub entry to import for WLM's Website."] = "When exporting a sequence create a stub entry to import for WLM's Website."
--[[Translation missing --]]
L["When exporting a sequence use a human readable verbose form."] = "When exporting a sequence use a human readable verbose form."
--[[Translation missing --]]
L["When GSE imports a macro and it already exists locally and has local edits, what do you want the default action to be.  Merge - Add the new MacroVersions to the existing Macro.  Replace - Replace the existing macro with the new version. Ignore - ignore updates.  This default action will set the default on the Compare screen however if the GUI is not available this will be the action taken."] = "When GSE imports a macro and it already exists locally and has local edits, what do you want the default action to be.  Merge - Add the new MacroVersions to the existing Macro.  Replace - Replace the existing macro with the new version. Ignore - ignore updates.  This default action will set the default on the Compare screen however if the GUI is not available this will be the action taken."
--[[Translation missing --]]
L["When loading or creating a sequence, if it is a global or the macro has an unknown specID automatically create the Macro Stub in Account Macros"] = "When loading or creating a sequence, if it is a global or the macro has an unknown specID automatically create the Macro Stub in Account Macros"
--[[Translation missing --]]
L["When loading or creating a sequence, if it is a macro of the same class automatically create the Macro Stub"] = "When loading or creating a sequence, if it is a macro of the same class automatically create the Macro Stub"
--[[Translation missing --]]
L["When you log into a class without any macros, prompt to load the sample macros."] = "When you log into a class without any macros, prompt to load the sample macros."
L["Yes"] = "예"
--[[Translation missing --]]
L["You cannot delete the Default version of this macro.  Please choose another version to be the Default on the Configuration tab."] = "You cannot delete the Default version of this macro.  Please choose another version to be the Default on the Configuration tab."
--[[Translation missing --]]
L["You cannot delete this version of a sequence.  This version will be reloaded as it is contained in "] = "You cannot delete this version of a sequence.  This version will be reloaded as it is contained in "
--[[Translation missing --]]
L["You need to reload the User Interface for the change in StepFunction to take effect.  Would you like to do this now?"] = "You need to reload the User Interface for the change in StepFunction to take effect.  Would you like to do this now?"
--[[Translation missing --]]
L["You need to reload the User Interface to complete this task.  Would you like to do this now?"] = "You need to reload the User Interface to complete this task.  Would you like to do this now?"
--[[Translation missing --]]
L["Your ClassID is "] = "Your ClassID is "
--[[Translation missing --]]
L["Your current Specialisation is "] = "Your current Specialisation is "
--[[Translation missing --]]
L["Your sequence name was longer than 27 characters.  It has been shortened from %s to %s so that your macro will work."] = "Your sequence name was longer than 27 characters.  It has been shortened from %s to %s so that your macro will work."




