AceComm=LibStub("AceComm-3.0")
SlashCmdList["DOIT"]=function(whatisay)
	if whatisay=="" then Print("Usage /doit <thing to do>") return end
	AceComm.SendCommMessage(HoneyFrame,"HONEY_DOIT", whatisay ,"RAID")
end
HoneyFrame = CreateFrame("frame","HoneyAddon",UIParent)
function HoneyFrame:OnCommReceived(prefix,whatisay)
	HoneyAddon_doit(whatisay)
end
AceComm.RegisterComm(HoneyFrame,"HONEY_DOIT")

function HoneyAddon_doit(thingtodo)
	print(thingtodo)
end



So, if you put the above in your addon, you will now have the capability to type /doit Hello world!
When you do, all your toons will take the random text and print "Hello world!" to their screen.

You also have to add the Libs dir to your addon dir.
list embeds.xml in your .toc right above your addon lua, i.e:

embeds.xml
Furyswipes_5mmb.lua
