
if not(GetLocale() == "zhCN") then
    return;
end

local L = LibStub("AceLocale-3.0"):NewLocale("GSE", "zhCN")

-- Options translation
L["  The Alternative ClassID is "] = "  选择的职业ID "
L[" Deleted Orphaned Macro "] = " 删除孤立的宏 "
L[" from "] = " 从 "
L[" has been added as a new version and set to active.  Please review if this is as expected."] = " 已经添加为新版本并设置为活动的.请检查以保障这是你预期的设置."
L[" is not available.  Unable to translate sequence "] = " 无法使用.因为无法翻译该序列. "
L[" macros per Account.  You currently have "] = " 宏/账户.你目前已有 "
L[" macros per character.  You currently have "] = " 宏/角色.你目前已有 "
L[" saved as version "] = " 保存至版本 "
L[" sent"] = " 发送"
L[" tried to overwrite the version already loaded from "] = " 试图覆盖已经加载的版本 "
L[" was imported as a new macro."] = "导入为新的宏."
L[" was imported with the following errors."] = " 导入时出现以下错误."
L[" was updated to new version."] = "已更新为新版本."
L[". This version was not loaded."] = ". 未加载此版本."
L["/gs |r to get started."] = "/gs |r 以开始."
L["/gs checkmacrosforerrors|r will loop through your macros and check for corrupt macro versions.  This will then show how to correct these issues."] = "/ gs checkmacrosforerrors |r 将循环访问你的宏并检查是否存在损坏的宏版本.同时显示如何纠正这些问题."
L["/gs cleanorphans|r will loop through your macros and delete any left over GS-E macros that no longer have a sequence to match them."] = "/gs cleanorphans|r 将遍历你的宏删除任何GS-E宏使其不再有任何序列匹配."
L["/gs help|r to get started."] = "/gs help|r 获取上手指南."
L["/gs listall|r will produce a list of all available macros with some help information."] = "/gs listall|r 将列出所有可用的宏和一些帮助信息."
L["/gs showspec|r will show your current Specialisation and the SPECID needed to tag any existing macros."] = "/gs showspec|r 显示你使用的天赋ID以及专精信息和特定标签任何现有的宏."
L["/gs|r again."] = "/gs|r 再一次."
L["/gs|r will list any macros available to your spec.  This will also add any macros available for your current spec to the macro interface."] = "/gs|r 将列出所有当前天赋的宏.同样添加全部你当前天赋的宏到宏界面."
L[":|r The Sequence Translator allows you to use GS-E on other languages than enUS.  It will translate sequences to match your language.  If you also have the Sequence Editor you can translate sequences between languages.  The GS-E Sequence Translator is available on curse.com"] = ":|r 序列翻译允许你使用英语之外的其他语言在gs-e上.它将翻译序列来匹配你的语言.如果你也有序列编辑器,你可以在不同语言之间翻译序列.gs-e序列的翻译可在curse.com找到"
L[":|r To get started "] = ":|r 获取上手指南 "
L[":|r You cannot delete the only copy of a sequence."] = ":|r 你不能删除序列的唯一副本."
L[":|r Your current Specialisation is "] = ":|r 你现在的专精是 "
L["|cffff0000GS-E:|r Gnome Sequencer - Enhanced Options"] = "|cffff0000GS-E:|r Gnome Sequencer - Enhanced 设置"
L["|r Incomplete Sequence Definition - This sequence has no further information "] = "|r 不完整序列定义 - 此序列没有其他信息 "
L["|r.  As a result this macro was not created.  Please delete some macros and reenter "] = "|r.  所以此宏未创建. 请删除一些宏并重新输入 "
L["|r.  You can also have a  maximum of "] = "|r.  同时你最多可以拥有 "
L["<DEBUG> |r "] = "<DEBUG> |r "
L["<SEQUENCEDEBUG> |r "] = "<SEQUENCEDEBUG> |r "
L["A new version of %s has been added."] = "已添加新版本的 %s ."
L["A sequence collision has occured. "] = "发生了一个序列冲突. "
L["A sequence collision has occured.  Extra versions of this macro have been loaded.  Manage the sequence to determine how to use them "] = "发生了一个序列冲突.  已加载此宏的其他版本.  管理序列器以确认如何使用它们 "
L["A sequence collision has occured.  Your local version of "] = "发生了一个序列冲突.   你的本地版本 "
L["About"] = "关于"
L["About GSE"] = "关于 GSE"
L["Actions"] = "动作"
L["Active Version: "] = "活动版本: "
--[[Translation missing --]]
L["Add a substitution variable for this macro.  This can either be a straight string swap or can be a function.  If a lua function the function needs to return a value."] = "Add a substitution variable for this macro.  This can either be a straight string swap or can be a function.  If a lua function the function needs to return a value."
--[[Translation missing --]]
L["Add Variable"] = "Add Variable"
--[[Translation missing --]]
L["Add WeakAura"] = "Add WeakAura"
L["Addin Version %s contained versions for the following macros:"] = "加载版本 %s 包含于以下宏:"
L["All macros are now stored as upper case names.  You may need to re-add your old macros to your action bars."] = "所有的宏现在被储存为大写.你也许需要重新添加旧的宏到动作栏."
L["Alt Keys."] = "Alt键."
L["Any Alt Key"] = "任意Alt键"
L["Any Control Key"] = "任意Ctrl键"
L["Any Shift Key"] = "任意Shift键"
L["Are you sure you want to delete %s?  This will delete the macro and all versions.  This action cannot be undone."] = "你确定要删除 %s?  这将删除该宏和所有版本.  本操作无法撤销."
L["Arena"] = "竞技场"
L["Arena setting changed to Default."] = "竞技场设置更改为默认."
L["As GS-E is updated, there may be left over macros that no longer relate to sequences.  This will check for these automatically on logout.  Alternatively this check can be run via /gs cleanorphans"] = "GS-E已更新,可能会有遗留的不再使用的宏. 登出时会自动检查. 另外这个检查可以通过输入 / GS cleanorphans 运行 "
--[[Translation missing --]]
L["Auras included in GSE Macros"] = "Auras included in GSE Macros"
L["Author"] = "作者"
L["Author Colour"] = "作者颜色"
L["Auto Create Class Macro Stubs"] = "自动创建职业宏存根"
L["Auto Create Global Macro Stubs"] = "自动创建全局宏存根"
L["Automatically Create Macro Icon"] = "自动创建宏图标"
L["Available Addons"] = "可用插件"
L["Belt"] = "腰带"
L["Blizzard Functions Colour"] = "暴雪功能颜色"
L["By setting the default Icon for all macros to be the QuestionMark, the macro button on your toolbar will change every key hit."] = "通过设置宏的图标为问号, 使宏在每次按下时变更图标."
L["By setting this value the Sequence Editor will show every macro for every class."] = "勾选此项,插件将显示全部职业的全部宏."
L["By setting this value the Sequence Editor will show every macro for your class.  Turning this off will only show the class macros for your current specialisation."] = "勾选此项,序列编辑器将显示职业的全部专精的宏.否则只显示当前专精的宏."
L["Cancel"] = "撤销/取消"
L["CheckMacroCreated"] = "检测已创建宏"
--[[Translation missing --]]
L["Checks to see if you have a Heart of Azeroth equipped and if so will insert '/cast Heart Essence' into the macro.  If not your macro will skip this line."] = "Checks to see if you have a Heart of Azeroth equipped and if so will insert '/cast Heart Essence' into the macro.  If not your macro will skip this line."
L["Choose import action:"] = "选择导入动作:"
L["Choose Language"] = "选择语言"
L["Classwide Macro"] = "职业通用宏"
L["Clear"] = "清除"
--[[Translation missing --]]
L["Clear Common Keybindings"] = "Clear Common Keybindings"
L["Clear Errors"] = "清除错误"
--[[Translation missing --]]
L["Clear Keybindings"] = "Clear Keybindings"
L["Close"] = "关闭"
L["Close to Maximum Macros.|r  You can have a maximum of "] = "超过最大宏上限.|r  你最多可以有 "
L["Close to Maximum Personal Macros.|r  You can have a maximum of "] = "超过最大角色宏上限.|r  你最多可以有 "
L["Colour"] = "颜色"
L["Colour and Accessibility Options"] = "颜色和辅助功能设置"
L["Combat"] = "战斗"
L["Command Colour"] = "命令颜色"
L["Completely New GS Macro."] = "全新的GS宏."
--[[Translation missing --]]
L["Compress"] = "Compress"
--[[Translation missing --]]
L["Compress Sequence from Forums"] = "Compress Sequence from Forums"
L["Conditionals Colour"] = "条件颜色"
L["Configuration"] = "结构"
L["Continue"] = "继续"
L["Contributed by: "] = "贡献者: "
L["Control Keys."] = "Ctrl键."
L["Copy this link and open it in a Browser."] = "复制此链接并在浏览器中打开它."
--[[Translation missing --]]
L["Create a new macro."] = "Create a new macro."
L["Create buttons for Global Macros"] = "创建全局宏的按钮"
L["Create Icon"] = "创建图标"
L["Create Macro"] = "创建宏"
--[[Translation missing --]]
L[ [=[Create or remove a Macro stub in /macro that can be dragged to your action bar so that you can use this macro.
GSE can store an unlimited number of macros however WOW's /macro interface can only store a limited number of macros.]=] ] = [=[Create or remove a Macro stub in /macro that can be dragged to your action bar so that you can use this macro.
GSE can store an unlimited number of macros however WOW's /macro interface can only store a limited number of macros.]=]
L["Creating New Sequence."] = "创建新序列."
--[[Translation missing --]]
L["Current GCD"] = "Current GCD"
--[[Translation missing --]]
L["Current GCD: %s"] = "Current GCD: %s"
L["Debug"] = "调试"
L["Debug Mode Options"] = "调试模式设置"
L["Debug Output Options"] = "调试输出设置"
L["Debug Sequence Execution"] = "调试序列执行"
--[[Translation missing --]]
L["Decompress"] = "Decompress"
--[[Translation missing --]]
L["Default Editor Height"] = "Default Editor Height"
--[[Translation missing --]]
L["Default Editor Width"] = "Default Editor Width"
L["Default Import Action"] = "默认导入动作"
L["Default Version"] = "默认版本"
--[[Translation missing --]]
L["Del"] = "Del"
L["Delete"] = "删除"
L["Delete Icon"] = "删除图标"
L["Delete Orphaned Macros on Logout"] = "登出时删除孤立的宏"
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
--[[Translation missing --]]
L["Delete Variable"] = "Delete Variable"
L["Delete Version"] = "删除版本"
--[[Translation missing --]]
L["Delete WeakAura"] = "Delete WeakAura"
L["Different helpTxt"] = "不同的帮助脚本"
L["Disable"] = "禁用"
--[[Translation missing --]]
L["Disable Editor"] = "Disable Editor"
L["Disable Sequence"] = "禁用序列"
L["Display debug messages in Chat Window"] = "在聊天窗口中显示调试信息"
L["Don't Translate Sequences"] = "不要翻译序列"
--[[Translation missing --]]
L["Drag this icon to your action bar to use this macro. You can change this icon in the /macro window."] = "Drag this icon to your action bar to use this macro. You can change this icon in the /macro window."
L["Dungeon"] = "地下城版本"
--[[Translation missing --]]
L["Dungeon setting changed to Default."] = "Dungeon setting changed to Default."
L["Edit"] = "编辑"
--[[Translation missing --]]
L["Edit this macro.  To delete a macro, choose this edit option and then from inside hit the delete button."] = "Edit this macro.  To delete a macro, choose this edit option and then from inside hit the delete button."
L["Editor Colours"] = "编辑器颜色"
L["Emphasis Colour"] = "强调颜色"
L["Enable"] = "启用"
L["Enable Debug for the following Modules"] = "启用调试给以下模块"
L["Enable Mod Debug Mode"] = "启用模块调试模式"
L["Enable Sequence"] = "启用宏"
L["Enable this option to stop automatically translating sequences from enUS to local language."] = "启用这个选项以停止自动将序列从英文翻译为本地语言."
--[[Translation missing --]]
L["Enable timing functions by using Click refresh speed as a pseudo timer."] = "Enable timing functions by using Click refresh speed as a pseudo timer."
--[[Translation missing --]]
L["Enforce GSE minimum version for this macro"] = "Enforce GSE minimum version for this macro"
L["Error found in version %i of %s."] = "版本 %i 在序列 %s 中被发现错误."
L["Export"] = "导出"
L["Export a Sequence"] = "导出序列"
--[[Translation missing --]]
L["Export Macro Read Only"] = "Export Macro Read Only"
--[[Translation missing --]]
L["Export this Macro."] = "Export this Macro."
L["Extra Macro Versions of %s has been added."] = "额外宏版本 %s 已被添加."
L["Filter Macro Selection"] = "宏过滤选择器"
L["Finished scanning for errors.  If no other messages then no errors were found."] = "完成错误扫描.如果没有其他提示消息,则没有发现错误."
L["Format export for WLM Forums"] = "以WLM论坛格式导出"
L["FYou cannot delete this version of a sequence.  This version will be reloaded as it is contained in "] = "F你不能删除此版本的序列.这个版本将被重新加载,因为它包含在 "
L["Gameplay Options"] = "游戏选项"
L["General"] = "常规"
L["General Options"] = "常规设置"
L["Global Macros are those that are valid for all classes.  GSE2 also imports unknown macros as Global.  This option will create a button for these macros so they can be called for any class.  Having all macros in this space is a performance loss hence having them saved with a the right specialisation is important."] = "全局宏是对所有职业都有效的宏.GSE2也导入未知的全局宏.此选项将创建一个按钮使它们可以被任何职业调用.所有宏存在这个空间都会有性能损失.因此最好把它们保存在正确的专精下."
--[[Translation missing --]]
L["Gnome Sequencer: Compress a Sequence String."] = "Gnome Sequencer: Compress a Sequence String."
L["Gnome Sequencer: Export a Sequence String."] = "Gnome Sequencer: 输出序列字符串."
L["Gnome Sequencer: Import a Macro String."] = "Gnome Sequencer: 导入宏字符串."
L["Gnome Sequencer: Record your rotation to a macro."] = "Gnome Sequencer: 记录你的循环到一个宏."
L["Gnome Sequencer: Sequence Debugger. Monitor the Execution of your Macro"] = "Gnome Sequencer: 序列调试. 监视你的宏的执行"
L["Gnome Sequencer: Sequence Editor."] = "Gnome Sequencer: 序列编辑器."
L["Gnome Sequencer: Sequence Version Manager"] = "Gnome Sequencer: 序列版本管理器"
L["Gnome Sequencer: Sequence Viewer"] = "Gnome Sequencer: Sequence Viewer"
L["GnomeSequencer was originally written by semlar of wowinterface.com."] = "GnomeSequencer最初是由wowinterface.com的semlar编写的."
L["GnomeSequencer-Enhanced"] = "GnomeSequencer-增强"
L["GnomeSequencer-Enhanced loaded.|r  Type "] = "GnomeSequencer-增强 加载.|r  输入 "
L["GSE"] = "GSE"
--[[Translation missing --]]
L["GSE - %s's Macros"] = "GSE - %s's Macros"
L["GSE allows plugins to load Macro Collections as plugins.  You can reload a collection by pressing the button below."] = "GSE允许插件加载宏整合包作为插件. 你可以按下面的按钮重新加载整合包."
L["GS-E can save all macros or only those versions that you have created locally.  Turning this off will cache all macros in your WTF\\GS-Core.lua variables file but will increase load times and potentially cause colissions."] = "GS-E可以保存所有的宏或只有那些你所创建的本地版本.关闭这个功能会在你的WTF \\ gs-core.lua变量文件缓存所有宏,但会增加加载时间,并有可能引起冲突."
L["GSE has a LibDataBroker (LDB) data feed.  List Other GSE Users and their version when in a group on the tooltip to this feed."] = "GSE有一个LibDataBroker（LDB）数据源. 当在提示这一组源时,列出其他GSE的用户的版本."
L["GSE has a LibDataBroker (LDB) data feed.  Set this option to show queued Out of Combat events in the tooltip."] = "GSE有一个LibDataBroker（LDB）数据源.设置此选项可在提示中显示序列中的战斗外事件."
L["GSE is a complete rewrite of that addon that allows you create a sequence of macros to be executed at the push of a button."] = "GSE是这个插件的完整的重写.这允许你创建一个宏的序列,在按下按钮时执行."
L["GSE is out of date. You can download the newest version from https://mods.curse.com/addons/wow/gnomesequencer-enhanced."] = "GSE 已过期. 你可以在  https://mods.curse.com/addons/wow/gnomesequencer-enhanced 下载新版本."
--[[Translation missing --]]
L["GSE is out of date. You can download the newest version from https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros."] = "GSE is out of date. You can download the newest version from https://www.curseforge.com/wow/addons/gse-gnome-sequencer-enhanced-advanced-macros."
L["GSE Macro"] = "GSE 宏"
L["GS-E Plugins"] = "GS-E 插件"
--[[Translation missing --]]
L["GSE stores the base spell and asks WoW to use that ability.  WoW will then choose the current version of the spell.  This toggle switches between showing the Base Spell or the Current Spell."] = "GSE stores the base spell and asks WoW to use that ability.  WoW will then choose the current version of the spell.  This toggle switches between showing the Base Spell or the Current Spell."
L["GSE Users"] = "GSE 用户"
L["GSE Version: %s"] = "GSE 版本: %s"
--[[Translation missing --]]
L[ [=[GSE was originally forked from GnomeSequencer written by semlar.  It was enhanced by TImothyLuke to include a lot of configuration and boilerplate functionality with a GUI added.  The enhancements pushed the limits of what the original code could handle and was rewritten from scratch into GSE.

GSE itself wouldn't be what it is without the efforts of the people who write macros with it.  Check out https://wowlazymacros.com for the things that make this mod work.  Special thanks to Lutechi for creating this community.]=] ] = [=[GSE was originally forked from GnomeSequencer written by semlar.  It was enhanced by TImothyLuke to include a lot of configuration and boilerplate functionality with a GUI added.  The enhancements pushed the limits of what the original code could handle and was rewritten from scratch into GSE.

GSE itself wouldn't be what it is without the efforts of the people who write macros with it.  Check out https://wowlazymacros.com for the things that make this mod work.  Special thanks to Lutechi for creating this community.]=]
--[[Translation missing --]]
L["GSE: Import a Macro String."] = "GSE: Import a Macro String."
L["GSE: Left Click to open the Sequence Editor"] = "GSE: 左键单击以打开序列编辑器"
L["GS-E: Left Click to open the Sequence Editor"] = "GS-E: 左键单击以打开序列编辑器"
L["GSE: Middle Click to open the Transmission Interface"] = "GSE: 中键单击以打开传输接口"
L["GS-E: Middle Click to open the Transmission Interface"] = "GS-E: 中键单击以打开传输界面"
L["GSE: Right Click to open the Sequence Debugger"] = "GSE: 右键单击以打开序列调试器"
L["GS-E: Right Click to open the Sequence Debugger"] = "GS-E: 右键单击以打开序列调试器"
L["Head"] = "头部"
L["Help Colour"] = "帮助颜色"
L["Help Information"] = "帮助信息"
L["Help Link"] = "帮助链接"
L["Help URL"] = "帮助网址"
L["Heroic"] = "英雄难度"
--[[Translation missing --]]
L["Heroic setting changed to Default."] = "Heroic setting changed to Default."
L["Hide Login Message"] = "隐藏加载信息"
--[[Translation missing --]]
L["Hide Minimap Icon"] = "Hide Minimap Icon"
--[[Translation missing --]]
L["Hide Minimap Icon for LibDataBroker (LDB) data text."] = "Hide Minimap Icon for LibDataBroker (LDB) data text."
L["Hides the message that GSE is loaded."] = "隐藏GSE加载的信息."
--[[Translation missing --]]
L["History"] = "History"
--[[Translation missing --]]
L["How many pixels high should the Editor start at.  Defaults to 700"] = "How many pixels high should the Editor start at.  Defaults to 700"
--[[Translation missing --]]
L["How many pixels wide should the Editor start at.  Defaults to 700"] = "How many pixels wide should the Editor start at.  Defaults to 700"
L["Icon Colour"] = "图标颜色"
L["If you load Gnome Sequencer - Enhanced and the Sequence Editor and want to create new macros from scratch, this will enable a first cut sequenced template that you can load into the editor as a starting point.  This enables a Hello World macro called Draik01.  You will need to do a /console reloadui after this for this to take effect."] = "如果你加载 Gnome Sequencer - Enhanced(侏儒序列器-增强) 和 Sequence Editor(序列编辑器) 并希望从头开始创建新的宏, 这将启用一个初始序列模板,你可以加载到编辑器作为起点.  它会启动一个名为Draik01的宏作为Hellow World宏.  你需要输入 /console reloadui 之后使之生效."
L["Ignore"] = "忽略"
L["Import"] = "导入"
L["Import Macro from Forums"] = "从论坛导入宏"
L["Imported new sequence "] = "导入新序列 "
L["Incorporate the belt slot into the KeyRelease. This is the equivalent of /use [combat] 5 in a KeyRelease."] = "使用腰部在释放按键时. 这等效于 /use [combat] 5 在释放按键时."
L["Incorporate the first ring slot into the KeyRelease. This is the equivalent of /use [combat] 11 in a KeyRelease."] = "使用第一个戒指在释放按键时. 这等效于 /use [combat] 11 在释放按键时."
L["Incorporate the first trinket slot into the KeyRelease. This is the equivalent of /use [combat] 13 in a KeyRelease."] = "使用第一个饰品在释放按键时. 这等效于 /use [combat] 13 在释放按键时."
L["Incorporate the Head slot into the KeyRelease. This is the equivalent of /use [combat] 1 in a KeyRelease."] = "使用头部在释放按键时. 这等效于 /use [combat] 1在释放按键时."
L["Incorporate the neck slot into the KeyRelease. This is the equivalent of /use [combat] 2 in a KeyRelease."] = "使用颈部在释放按键时. 这等效于 /use [combat] 2在释放按键时."
L["Incorporate the second ring slot into the KeyRelease. This is the equivalent of /use [combat] 12 in a KeyRelease."] = "使用第二个戒指在释放按键时. 这等效于 /use [combat] 12 在释放按键时."
L["Incorporate the second trinket slot into the KeyRelease. This is the equivalent of /use [combat] 14 in a KeyRelease."] = "使用第二个饰品在释放按键时. 这等效于 /use [combat] 14 在释放按键时."
L["Inner Loop End"] = "内部循环结束"
L["Inner Loop Limit"] = "内部循环限制"
--[[Translation missing --]]
L[ [=[Inner Loop Limit controls how many times the Sequence part of your macro executes 
until it goes onto to the PostMacro and then resets to the PreMacro.]=] ] = [=[Inner Loop Limit controls how many times the Sequence part of your macro executes 
until it goes onto to the PostMacro and then resets to the PreMacro.]=]
L["Inner Loop Start"] = "内部循环开始"
L["KeyPress"] = "按键按下"
L["KeyRelease"] = "按键释放"
L["Language"] = "语言"
L["Language Colour"] = "语言颜色"
L["Left Alt Key"] = "左Alt键"
L["Left Control Key"] = "左Ctrl键"
L["Left Mouse Button"] = "鼠标左键"
L["Left Shift Key"] = "左Shift键"
L["Legacy GS/GSE1 Macro"] = "遗留的 GS/GSE1 宏"
L["Like a /castsequence macro, it cycles through a series of commands when the button is pushed. However, unlike castsequence, it uses macro text for the commands instead of spells, and it advances every time the button is pushed instead of stopping when it can't cast something."] = "像一个 /castsequence 宏, 它在按下按钮时循环执行一系列命令. 然而, 与 /castsequence 不同, 它严格使用宏文本作为命令而不是根据法术状态, 并且它每次按下按钮时都会前进而不在它不能释放时停止."
L["Load"] = "读取"
--[[Translation missing --]]
L["Load or update this WeakAura into WeakAuras."] = "Load or update this WeakAura into WeakAuras."
L["Load Sequence"] = "读取序列"
--[[Translation missing --]]
L["Load WeakAura"] = "Load WeakAura"
L["Local Macro"] = "本地宏"
L["Macro Collection to Import."] = "宏集合导入."
--[[Translation missing --]]
L["Macro found by the name %sPVP%s. Rename this macro to a different name to be able to use it.  WOW has a global object called PVP that is referenced instead of this macro."] = "Macro found by the name %sPVP%s. Rename this macro to a different name to be able to use it.  WOW has a global object called PVP that is referenced instead of this macro."
L["Macro found by the name %sWW%s. Rename this macro to a different name to be able to use it.  WOW has a hidden button called WW that is executed instead of this macro."] = "宏被命名为 %sWW%s .重命名此宏以能使用此宏.魔兽世界有一个隐藏的名为\"WW\"的按钮,使用此宏实际上会点击该按钮而不是使用此宏. "
L["Macro Icon"] = "宏图标"
L["Macro Import Successful."] = "宏导入成功."
L["Macro Reset"] = "宏重置"
L["Macro unable to be imported."] = "无法导入宏."
--[[Translation missing --]]
L["Macro Variables"] = "Macro Variables"
L["Macro Version %d deleted."] = "宏版本%d 已删除."
L["Make Active"] = "使它活动"
L["Manage Versions"] = "管理版本"
L["Matching helpTxt"] = "匹配帮助文本"
L["Merge"] = "合并"
L["MergeSequence"] = "合并序列"
L["Middle Mouse Button"] = "鼠标中键"
--[[Translation missing --]]
L["Millisecond click settings"] = "Millisecond click settings"
L["Mouse Button 4"] = "鼠标键4"
L["Mouse Button 5"] = "鼠标键5"
L["Mouse Buttons."] = "鼠标键."
L["Moved %s to class %s."] = "移动 %s 到职业 %s ."
--[[Translation missing --]]
L["MS Click Rate"] = "MS Click Rate"
L["Mythic"] = "史诗难度"
--[[Translation missing --]]
L["Mythic setting changed to Default."] = "Mythic setting changed to Default."
L["Mythic+"] = "史诗+难度"
L["Mythic+ setting changed to Default."] = "史诗+设置更改为默认."
--[[Translation missing --]]
L["Name"] = "Name"
L["Neck"] = "颈部"
L["New"] = "新"
L["New Sequence Name"] = "新序列名称"
L["No"] = "否"
L["No Active Version"] = "无活动版本"
L["No changes were made to "] = "没有改变被应用到"
L["No Help Information "] = "无帮助信息 "
L["No Help Information Available"] = "没有帮助信息可用"
--[[Translation missing --]]
L["No Sample Macros are available yet for this class."] = "No Sample Macros are available yet for this class."
L["No Sequences present so none displayed in the list."] = "当前没有序列,因此列表中无内容."
L["Normal Colour"] = "通常颜色"
--[[Translation missing --]]
L["Notes and help on how this macro works.  What things to remember.  This information is shown in the sequence browser."] = "Notes and help on how this macro works.  What things to remember.  This information is shown in the sequence browser."
L["Only Save Local Macros"] = "仅保存本地宏"
--[[Translation missing --]]
L["Opens the GSE Options window"] = "Opens the GSE Options window"
L["openviewer"] = "打开查看器"
L["Options"] = "设置"
L["Options have been reset to defaults."] = "设置已被重置为默认值."
L["Output"] = "导出"
L["Output the action for each button press to verify StepFunction and spell availability."] = "输出按钮按下后的每个的动作以验证步骤方法和法术的可用性."
--[[Translation missing --]]
L["Party"] = "Party"
--[[Translation missing --]]
L["Party setting changed to Default."] = "Party setting changed to Default."
L["Pause"] = "暂停"
L["Paused"] = "已暂停"
L["Paused - In Combat"] = "已暂停  - 在战斗中"
L["Picks a Custom Colour for emphasis."] = "拾取一个颜色给强调."
L["Picks a Custom Colour for the Author."] = "拾取一个颜色给作者."
L["Picks a Custom Colour for the Commands."] = "拾取一个颜色给命令."
L["Picks a Custom Colour for the Mod Names."] = "拾取一个颜色给MOD名称."
L["Picks a Custom Colour to be used for braces and indents."] = "选择要使用的自定义颜色给框架和缩进."
L["Picks a Custom Colour to be used for Icons."] = "选择要使用的自定义颜色给图标."
L["Picks a Custom Colour to be used for language descriptors"] = "选择要使用的自定义颜色给语言描述"
L["Picks a Custom Colour to be used for macro conditionals eg [mod:shift]"] = "选择要使用的自定义颜色给宏按键条件,如:[mod:shift]"
L["Picks a Custom Colour to be used for Macro Keywords like /cast and /target"] = "选择要使用的自定义颜色给宏关键字,如: /cast 和 /target"
L["Picks a Custom Colour to be used for numbers."] = "选择要使用的自定义颜色给数字."
L["Picks a Custom Colour to be used for Spells and Abilities."] = "选择要使用的自定义颜色给法术和技能."
L["Picks a Custom Colour to be used for StepFunctions."] = "选择要使用的自定义颜色给步骤方法."
L["Picks a Custom Colour to be used for strings."] = "选择要使用的自定义颜色给字符串."
L["Picks a Custom Colour to be used for unknown terms."] = "选择要使用的自定义颜色给未知术语."
L["Picks a Custom Colour to be used normally."] = "选择要使用的自定义颜色给常用颜色."
L["Please wait till you have left combat before using the Sequence Editor."] = "请等待离开战斗后再使用序列编辑器."
L["Plugins"] = "插件"
L["PostMacro"] = "宏主体之后"
L["PreMacro"] = "宏主体之前"
L["Prevent Sound Errors"] = "防止错误音效"
L["Prevent UI Errors"] = "防止错误提示"
L["Print KeyPress Modifiers on Click"] = "点击时输出按钮"
L["Print to the chat window if the alt, shift, control modifiers as well as the button pressed on each macro keypress."] = "当宏按钮按下时,如果同时按下Alt,Shift,Ctrl键,则输出至聊天窗口."
L["Priority List (1 12 123 1234)"] = "优先级列表 (1 12 123 1234)"
--[[Translation missing --]]
L["Prompt Samples"] = "Prompt Samples"
L["PVP"] = "PVP"
L["PVP setting changed to Default."] = "PVP设置更改为默认值."
L["Raid"] = "Raid"
--[[Translation missing --]]
L["Raid setting changed to Default."] = "Raid setting changed to Default."
L["Random - It will select .... a spell, any spell"] = [=[随机 - 将会选择一个...一个法术,任意法术
]=]
--[[Translation missing --]]
L["Rank"] = "Rank"
L["Ready to Send"] = "准备发送"
L["Received Sequence "] = "接收序列 "
L["Record"] = "记录"
L["Record Macro"] = "记录宏"
--[[Translation missing --]]
L["Record the spells and items you use into a new macro."] = "Record the spells and items you use into a new macro."
L["Registered Addons"] = "注册插件"
L["Rename New Macro"] = "重命名新宏"
L["Replace"] = "替换"
--[[Translation missing --]]
L["Request Macro"] = "Request Macro"
--[[Translation missing --]]
L["Request that the user sends you a copy of this macro."] = "Request that the user sends you a copy of this macro."
L["Require Target to use"] = "需要使用目标"
L["Reset Macro when out of combat"] = "当离开战斗时重置宏"
--[[Translation missing --]]
L["Reset this macro when you exit combat."] = "Reset this macro when you exit combat."
L["Resets"] = "重置"
L["Resets macros back to the initial state when out of combat."] = "在退出战斗时宏重置为初始状态."
L["Resume"] = "恢复"
--[[Translation missing --]]
L["Returns your current Global Cooldown value accounting for your haste if that stat is present."] = "Returns your current Global Cooldown value accounting for your haste if that stat is present."
L["Right Alt Key"] = "右Alt键"
L["Right Control Key"] = "右Ctrl键"
L["Right Mouse Button"] = "鼠标右键"
L["Right Shift Key"] = "右Shift键"
L["Ring 1"] = "戒指 1"
L["Ring 2"] = "戒指 2"
L["Running"] = "运行"
L["Save"] = "保存"
--[[Translation missing --]]
L["Save the changes made to this macro"] = "Save the changes made to this macro"
--[[Translation missing --]]
L["Scenario"] = "Scenario"
--[[Translation missing --]]
L["Scenario setting changed to Default."] = "Scenario setting changed to Default."
L["Seed Initial Macro"] = "种子初始宏"
--[[Translation missing --]]
L["Select a Sequence"] = "Select a Sequence"
L["Select Other Version"] = "选择其他版本"
L["Send"] = "发送"
--[[Translation missing --]]
L["Send this macro to another GSE player who is on the same server as you are."] = "Send this macro to another GSE player who is on the same server as you are."
L["Send To"] = "发送至"
L["Sequence"] = "序列(宏主体)"
L["Sequence %s saved."] = "序列 %s 已保存."
L["Sequence Author set to Unknown"] = "序列作者设置为未知"
L["Sequence Compare"] = "序列对比"
L["Sequence Debugger"] = "序列调试器"
L["Sequence Editor"] = "序列编辑器"
L["Sequence Name"] = "序列名"
L["Sequence Name %s is in Use. Please choose a different name."] = "序列名称 %s 已被使用.请选择一个不同的名称."
--[[Translation missing --]]
L["Sequence Named %s was not specifically designed for this version of the game.  It may need adjustments."] = "Sequence Named %s was not specifically designed for this version of the game.  It may need adjustments."
L["Sequence Saved as version "] = "保存序列版本为 "
L["Sequence specID set to current spec of "] = "序列天赋ID设置为当前天赋 "
--[[Translation missing --]]
L["Sequence to Compress."] = "Sequence to Compress."
L["Sequence Viewer"] = "序列查看器"
L["Sequential (1 2 3 4)"] = "顺序 (1 2 3 4)"
L["Set Default Icon QuestionMark"] = "设置默认图标为问号"
L["Shift Keys."] = "Shift键."
L["Show All Macros in Editor"] = "在编辑器显示全部宏"
L["Show Class Macros in Editor"] = "在编辑器显示职业宏"
--[[Translation missing --]]
L["Show Current Spells"] = "Show Current Spells"
L["Show Global Macros in Editor"] = "在编辑器显示全局宏"
L["Show GSE Users in LDB"] = "在LDB中显示GSE用户"
L["Show OOC Queue in LDB"] = "在LDB中显示OOC队列"
--[[Translation missing --]]
L["Show the current value of this variable."] = "Show the current value of this variable."
L["Source Language "] = "源语言 "
L["Specialisation / Class ID"] = "专精 / 职业 ID"
L["Specialization Specific Macro"] = "专精特定宏"
L["SpecID/ClassID Colour"] = "天赋ID/职业ID 颜色"
L["Spell Colour"] = "法术颜色"
L["Step Function"] = "步骤方法"
L["Step Functions"] = "步骤方法"
L["Stop"] = "停止"
L["Store Debug Messages"] = "储存调试消息"
L["Store output of debug messages in a Global Variable that can be referrenced by other mods."] = "将调试消息的输出存储在可由其他mod引用的全局变量中."
L["String Colour"] = "字符串颜色"
--[[Translation missing --]]
L["Supporters"] = "Supporters"
--[[Translation missing --]]
L["System Variables"] = "System Variables"
L["Talents"] = "天赋"
L["Target"] = "目标"
L["Target language "] = "目标语言 "
L["Target protection is currently %s"] = "目标保护目前为 %s"
--[[Translation missing --]]
L["Test Variable"] = "Test Variable"
--[[Translation missing --]]
L["The author of this macro."] = "The author of this macro."
L["The command "] = "命令 "
--[[Translation missing --]]
L["The current result of variable |cff0000ff~~%s~~|r is |cFF00D1FF%s|r"] = "The current result of variable |cff0000ff~~%s~~|r is |cFF00D1FF%s|r"
L["The Custom StepFunction Specified is not recognised and has been ignored."] = "指定的自定义步骤方法无法识别,并已被忽略."
--[[Translation missing --]]
L["The following people donate monthly via Patreon for the ongoing maintenance and development of GSE.  Their support is greatly appreciated."] = "The following people donate monthly via Patreon for the ongoing maintenance and development of GSE.  Their support is greatly appreciated."
L["The GSE Out of Combat queue is %s"] = "GSE插件退出战斗序列于 %s"
L["The GUI has not been loaded.  Please activate this plugin amongst WoW's addons to use the GSE GUI."] = "GUI未被加载.请在WoW的插件管理中激活此插件以使用GSE GUI."
L["The Macro Translator will translate an English sequence to your local language for execution.  It can also be used to translate a sequence into a different language.  It is also used for syntax based colour markup of Sequences in the editor."] = "宏翻译器将英语序列翻译成你的本地语言以供执行. 它也可以用于将序列翻译成不同的语言. 同时可用于编辑器中基于语法的颜色标记."
--[[Translation missing --]]
L["The main lines of the macro."] = "The main lines of the macro."
--[[Translation missing --]]
L["The milliseconds being used in key click delay."] = "The milliseconds being used in key click delay."
--[[Translation missing --]]
L[ [=[The name of your macro.  This name has to be unique and can only be used for one object.
You can copy this entire macro by changing the name and choosing Save.]=] ] = [=[The name of your macro.  This name has to be unique and can only be used for one object.
You can copy this entire macro by changing the name and choosing Save.]=]
L["The Sample Macros have been reloaded."] = "示例宏已重新加载."
L["The Sequence Editor can attempt to parse the Sequences, KeyPress and KeyRelease in realtime.  This is still experimental so can be turned off."] = "序列编辑器可以尝试实时解析序列,按键按下/释放.这仍然是实验功能所以可以关闭."
L["The Sequence Editor is an addon for GnomeSequencer-Enhanced that allows you to view and edit Sequences in game.  Type "] = "序列编辑器是 GnomeSequencer-增强 的插件,允许你在游戏中查看和编辑序列.  输入 "
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
L["There are %i events in out of combat queue"] = "离开战斗的序列中有 %i 个事件"
L["There are no events in out of combat queue"] = "在离开战斗的序列中没有事件"
L["There are No Macros Loaded for this class.  Would you like to load the Sample Macro?"] = "这个职业没有任何宏. 你要加载示例宏吗?"
L["There is an issue with sequence %s.  It has not been loaded to prevent the mod from failing."] = "序列%s存在错误. 它没有被加载,以防止模组出错."
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
L["These options combine to allow you to reset a macro while it is running.  These options are Cumulative ie they add to each other.  Options Like LeftClick and RightClick won't work together very well."] = "这些选项组合允许你在运行宏时重置宏.这些选项是累加的.类似同时选择左键单击和右键单击,无法很好的协作."
--[[Translation missing --]]
L["These tick boxes have three settings for each slot.  Gold = Definately use this item. Blank = Do not use this item automatically.  Silver = Either use or not based on my default settings store in GSE's Options."] = "These tick boxes have three settings for each slot.  Gold = Definately use this item. Blank = Do not use this item automatically.  Silver = Either use or not based on my default settings store in GSE's Options."
L["This change will not come into effect until you save this macro."] = "此更改将不会生效,直到你保存此宏."
--[[Translation missing --]]
L["This function will remove the SHIFT+N, ALT+N and CTRL+N keybindings for this character.  Useful if [mod:shift] etc conditions don't work in game."] = "This function will remove the SHIFT+N, ALT+N and CTRL+N keybindings for this character.  Useful if [mod:shift] etc conditions don't work in game."
L["This function will update macro stubs to support listening to the options below.  This is required to be completed 1 time per character."] = "此功能将更新宏存根以支持下面的选项.每个角色都需要运行一次."
L["This is a small addon that allows you create a sequence of macros to be executed at the push of a button."] = "这是一个小插件,允许你创建一个宏序列以便在按下按钮时执行."
L["This is the only version of this macro.  Delete the entire macro to delete this version."] = "这是此宏的唯一版本. 删除整个宏以删除此版本."
--[[Translation missing --]]
L["This macro uses features that are not available in this version. You need to update GSE to %s in order to use this macro."] = "This macro uses features that are not available in this version. You need to update GSE to %s in order to use this macro."
L["This option clears errors and stack traces ingame.  This is the equivalent of /run UIErrorsFrame:Clear() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."] = "该选项会清除游戏中的错误追踪.这等于写入 /run UIErrorsFrame:Clear() 在按键释放.  打开这个将触发一个关于运行自定义脚本的欺骗警告."
L["This option dumps extra trace information to your chat window to help troubleshoot problems with the mod"] = "此选项将额外的跟踪信息转储到聊天窗口,以帮助解决模块的问题"
L["This option hide error sounds like \"That is out of range\" from being played while you are hitting a GS Macro.  This is the equivalent of /console Sound_EnableErrorSpeech lines within a Sequence.  Turning this on will trigger a Scam warning about running custom scripts."] = "该选项将隐藏当你使用GS宏时的\"超出范围了\"之类的音效.等于命令 /console Sound_EnableErrorSpeech.打开这个将触发一个关于运行自定义脚本的欺骗警告."
L["This option hides text error popups and dialogs and stack traces ingame.  This is the equivalent of /script UIErrorsFrame:Hide() in a KeyRelease.  Turning this on will trigger a Scam warning about running custom scripts."] = "该选项僵隐藏错误文本弹出和对话框和堆栈跟踪.这等于写入 /script UIErrorsFrame:Hide() 在按键释放.  打开这个将触发一个关于运行自定义脚本的欺骗警告."
L["This option prevents macros firing unless you have a target. Helps reduce mistaken targeting of other mobs/groups when your target dies."] = "该选项将禁止你在没有目标的时候启动宏.有助于减少当你的目标死亡时错误的针对其他怪物/组."
--[[Translation missing --]]
L["This sequence is Read Only and unable to be edited."] = "This sequence is Read Only and unable to be edited."
L["This Sequence was exported from GSE %s."] = "该序列导出自GSE %s."
L["This shows the Global Macros available as well as those for your class."] = "这将显示你当前职业可用的全局宏."
L["This version has been modified by TimothyLuke to make the power of GnomeSequencer avaialble to people who are not comfortable with lua programming."] = "这个版本已经被TimothyLuke修改,使GnomeSequencer的强大功能可以让不习惯lua编程的人使用."
L["This will display debug messages for the "] = "这将显示调试消息 "
L["This will display debug messages for the GS-E Ingame Transmission and transfer"] = "这将显示GS-E在游戏内传输和转移的调试消息"
L["This will display debug messages in the Chat window."] = "这将在聊天窗口显示调试消息."
L["Timewalking"] = "时光慢游"
L["Timewalking setting changed to Default."] = "时光慢游设置更改为默认."
L["Title Colour"] = "标题颜色"
L["To correct this either delete the version via the GSE Editor or enter the following command to delete this macro totally.  %s/run GSE.DeleteSequence (%i, %s)%s"] = "要纠正或删除版本,可通过GSE编辑器删除或输入下面的命令来完全删除该宏. %s/run GSE.DeleteSequence (%i, %s)%s"
L["To get started "] = "获取上手指南 "
L["To use a macro, open the macros interface and create a macro with the exact same name as one from the list.  A new macro with two lines will be created and place this on your action bar."] = "要使用宏,请打开宏界面,并创建一个与列表中名称完全相同的宏. 一个具有两行的新宏将被创建,将其放在你的操作栏上."
L["Translate to"] = "翻译至"
L["Translated Sequence"] = "翻译序列"
L["Trinket 1"] = "饰品 1"
L["Trinket 2"] = "饰品 2"
L["Two sequences with unknown sources found."] = "找到两个未知来源的序列."
--[[Translation missing --]]
L["Unable to interpret sequence."] = "Unable to interpret sequence."
L["Unknown Author|r "] = "未知作者|r "
L["Unknown Colour"] = "未知颜色"
L["Update"] = "更新"
L["Update Macro Stubs"] = "升级宏存根"
L["Update Macro Stubs."] = "升级宏存根."
L["Updated Macro"] = "更新了宏"
L["UpdateSequence"] = "更新序列"
L["Updating due to new version."] = "更新至新版本."
L["Use"] = "使用"
L["Use Belt Item in KeyRelease"] = "使用腰部物品在释放按键"
--[[Translation missing --]]
L["Use External MS Timings"] = "Use External MS Timings"
L["Use First Ring in KeyRelease"] = "使用第一个戒指在释放按键"
L["Use First Trinket in KeyRelease"] = "使用第一个饰品在释放按键"
L["Use Global Account Macros"] = "使用全局账户宏"
L["Use Head Item in KeyRelease"] = "使用头部物品在释放按键"
L["Use Macro Translator"] = "使用宏翻译器"
L["Use Neck Item in KeyRelease"] = "使用颈部物品在释放按键"
L["Use Realtime Parsing"] = "使用实时解析"
L["Use Second Ring in KeyRelease"] = "使用第二个戒指在释放按键"
L["Use Second Trinket in KeyRelease"] = "使用第二个饰品在释放按键"
--[[Translation missing --]]
L["Use Verbose Export Sequence Format"] = "Use Verbose Export Sequence Format"
L["Use WLM Export Sequence Format"] = "使用WLM导出序列格式"
--[[Translation missing --]]
L["Value"] = "Value"
--[[Translation missing --]]
L["Variables"] = "Variables"
--[[Translation missing --]]
L["Version"] = "Version"
L["Version="] = "版本="
--[[Translation missing --]]
L["WARNING ONLY"] = "WARNING ONLY"
--[[Translation missing --]]
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
L["When creating a macro, if there is not a personal character macro space, create an account wide macro."] = "创建宏时,如果没有角色宏空间,创建帐户通用的宏."
L["When exporting a sequence create a stub entry to import for WLM's Website."] = "导出序列时,创建一个存根条目以导入WLM的网站."
--[[Translation missing --]]
L["When exporting a sequence use a human readable verbose form."] = "When exporting a sequence use a human readable verbose form."
L["When GSE imports a macro and it already exists locally and has local edits, what do you want the default action to be.  Merge - Add the new MacroVersions to the existing Macro.  Replace - Replace the existing macro with the new version. Ignore - ignore updates.  This default action will set the default on the Compare screen however if the GUI is not available this will be the action taken."] = "当GSE导入宏并且已经有本地版本时,如何进行下一步.\"合并\"-将新版本添加到现有版本.\"替换\"-用新版本替换现有版本.\"忽略\"-忽略更新.默认操作将在屏幕上进行比较,但是如果GUI不可用,则会按照此处设定进行下一步."
L["When loading or creating a sequence, if it is a global or the macro has an unknown specID automatically create the Macro Stub in Account Macros"] = "加载或创建序列时,如果它是全局宏或宏具有未知的天赋ID,则会自动在帐户宏中创建宏存根"
L["When loading or creating a sequence, if it is a macro of the same class automatically create the Macro Stub"] = "当加载或创建序列时,如果它是同职业的宏,则自动创建宏存根"
--[[Translation missing --]]
L["When you log into a class without any macros, prompt to load the sample macros."] = "When you log into a class without any macros, prompt to load the sample macros."
L["Yes"] = "是"
L["You cannot delete the Default version of this macro.  Please choose another version to be the Default on the Configuration tab."] = "你不能删除此宏的默认版本. 请选择另一个版本作为配置选项卡上的默认版本."
L["You cannot delete this version of a sequence.  This version will be reloaded as it is contained in "] = "你不能删除此版本的序列. 此版本将重新加载,因为它包含在 "
L["You need to reload the User Interface for the change in StepFunction to take effect.  Would you like to do this now?"] = "你需要重新加载用户界面以使步骤方法中的更改生效. 你现在想这样做吗?"
L["You need to reload the User Interface to complete this task.  Would you like to do this now?"] = "你需要重新加载用户界面以完成此任务. 你现在想这样做吗?"
--[[Translation missing --]]
L["Your ClassID is "] = "Your ClassID is "
L["Your current Specialisation is "] = "你当前的专精是"
--[[Translation missing --]]
L["Your sequence name was longer than 27 characters.  It has been shortened from %s to %s so that your macro will work."] = "Your sequence name was longer than 27 characters.  It has been shortened from %s to %s so that your macro will work."




