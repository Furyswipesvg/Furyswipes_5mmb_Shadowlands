local GSE = GSE
local L = GSE.L
local GNOME, _ = ...

local Statics = GSE.Static

--- Return the characters current spec id
function GSE.GetCurrentSpecID()
    if GSE.GameMode == 1 then
        return GSE.GetCurrentClassID() and GSE.GetCurrentClassID()
    else
        local currentSpec = GetSpecialization()
        return currentSpec and select(1, GetSpecializationInfo(currentSpec)) or 0
    end
end

--- Return the current GCD for the current character
function GSE.GetGCD()

    local gcdSpell

    local gcd = 1500
    -- Classic doesnt have haste.
    if GSE.GameMode ~= 1 then
        local haste = UnitSpellHaste("player")
        gcd = 1.5/(1 + 0.01 * haste)
        --gcd = math.floor(gcd - (750 * haste / 100) + 0.5) / 1000
    else
        -- Hard coded for classic
        gcd = 1.5
    end

    return gcd

end

--- Return the characters class id
function GSE.GetCurrentClassID()
    local _, _, currentclassId = UnitClass("player")
    return currentclassId
end

--- Return the characters class id
function GSE.GetCurrentClassNormalisedName()
    local _, classnormalisedname, _ = UnitClass("player")
    return classnormalisedname
end

function GSE.GetClassIDforSpec(specid)
    -- Check for Classic WoW
    local classid = 0
    if GSE.GameMode == 1 then
        -- Classic WoW
        classid = Statics.SpecIDClassList[specid]
    else
        local id, name, description, icon, role, class = GetSpecializationInfoByID(specid)
        if specid <= 12 then
            classid = specid
        else
            for i = 1, 12, 1 do
                local cdn, st, cid = GetClassInfo(i)
                if class == st then
                    classid = i
                end
            end
        end
    end
    return classid
end

function GSE.GetClassIcon(classid)
    local classicon = {}
    classicon[1] = "Interface\\Icons\\inv_sword_27" -- Warrior
    classicon[2] = "Interface\\Icons\\ability_thunderbolt" -- Paladin
    classicon[3] = "Interface\\Icons\\inv_weapon_bow_07" -- Hunter
    classicon[4] = "Interface\\Icons\\inv_throwingknife_04" -- Rogue
    classicon[5] = "Interface\\Icons\\inv_staff_30" -- Priest
    classicon[6] = "Interface\\Icons\\inv_sword_27" -- Death Knight
    classicon[7] = "Interface\\Icons\\inv_jewelry_talisman_04" -- SWhaman
    classicon[8] = "Interface\\Icons\\inv_staff_13" -- Mage
    classicon[9] = "Interface\\Icons\\spell_nature_drowsy" -- Warlock
    classicon[10] = "Interface\\Icons\\Spell_Holy_FistOfJustice" -- Monk
    classicon[11] = "Interface\\Icons\\inv_misc_monsterclaw_04" -- Druid
    classicon[12] = "Interface\\Icons\\INV_Weapon_Glave_01" -- DEMONHUNTER
    return classicon[classid]

end

--- Check if the specID provided matches the players current class
function GSE.isSpecIDForCurrentClass(specID)
    local _, specname, specdescription, specicon, _, specrole, specclass = GetSpecializationInfoByID(specID)
    local currentclassDisplayName, currentenglishclass, currentclassId = UnitClass("player")
    if specID > 15 then
        GSE.PrintDebugMessage("Checking if specID " .. specID .. " " .. specclass .. " equals " .. currentenglishclass)
    else
        GSE.PrintDebugMessage("Checking if specID " .. specID .. " equals currentclassid " .. currentclassId)
    end
    return (specclass == currentenglishclass or specID == currentclassId)
end

function GSE.GetSpecNames()
    local keyset = {}
    for k, v in pairs(Statics.SpecIDList) do
        keyset[v] = v
    end
    return keyset
end

--- Returns the Character Name in the form Player@server
function GSE.GetCharacterName()
    return GetUnitName("player", true) .. '@' .. GetRealmName()
end

--- Returns the current Talent Selections as a string
function GSE.GetCurrentTalents()
    local talents = ""
    -- Need to change this later on to something meaningful
    if GSE.GameMode == 1 then
        talents = "CLASSIC"
    else
        for talentTier = 1, MAX_TALENT_TIERS do
            local available, selected = GetTalentTierInfo(talentTier, 1)
            talents = talents .. (available and selected or "?" .. ",")
        end
    end
    return talents
end

--- Experimental attempt to load a WeakAuras string.
function GSE.LoadWeakAura(str)

    if IsAddOnLoaded("WeakAuras") then
        WeakAuras.OpenOptions()
        WeakAuras.OpenOptions()
        WeakAuras.Import(str)
    else
        GSE.Print(L["WeakAuras was not found."])
    end

end

if not SaveBindings then
    function SaveBindings(p)
        AttemptToSaveBindings(p)
    end
end

--- This function clears the Shift+n and CTRL+x keybindings.
function GSE.ClearCommonKeyBinds()
    local combinators = {"SHIFT-", "CTRL-", "ALT-"}
    local defaultbuttons = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "="}
    for _, p in ipairs(combinators) do
        for _, v in ipairs(defaultbuttons) do
            SetBinding(p .. v)
            GSE.PrintDebugMessage("Cleared KeyCombination " .. p .. v)

        end
    end
    -- Save for this character
    SaveBindings(2)
    GSE.Print("Common Keybinding combinations cleared for this character.")
end
