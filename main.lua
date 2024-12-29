---@class BetterBags: AceAddon
local addon = LibStub('AceAddon-3.0'):GetAddon("BetterBags")

---@class Categories: AceModule
local categories = addon:GetModule('Categories')

-- Localization table
local locales = {
    ["enUS"] = {
        ["Cyrce's Circlet"] = "Cyrce's Circlet",
    },
    ["frFR"] = {
        ["Cyrce's Circlet"] = "Diadème de Cyrcé",
    },
    ["deDE"] = {
        ["Cyrce's Circlet"] = "Cyrces Reif",
    },
    ["esES"] = {
        ["Cyrce's Circlet"] = "Aro de Cyrce",
    },
    ["itIT"] = {
        ["Cyrce's Circlet"] = "Cerchio di Cyrce",
    },
    ["ptBR"] = {
        ["Cyrce's Circlet"] = "Aro de Circe",
    }
}

-- Detects current language
local currentLocale = GetLocale()

-- Function to get the translation
local function L(key)
    return locales[currentLocale] and locales[currentLocale][key] or locales["enUS"][key]
end

--Cyrce's Circlet
local CyrcesCirclet = {
    228411, --Cyrce's Circlet
}
--Citrines
local Citrines = {
    228646, --Legendary Skipper's Citrine
    228639, --Fathomdweller's Runed Citrine
    228638, --Stormbringer's Runed Citrine
    228634, --Thunderlord's Crackling Citrine
    228640, --Windsinger's Runed Citrine
    228636, --Undersea Overseer's Citrine
    228644, --Mariner's Hallowed Citrine
    228635, -- Squall Sailor's Citrine
    228648, --Roaring War-Queen's Citrine
    228647, --Seabed Leviathan's Citrine
    228642, --Storm Sewer's Citrine
    228643, --Old Salt's Bardic Citrine
}

local allItems = {
    CyrcesCirclet,
    Citrines,
}

--Delete category before adding translations
categories:DeleteCategory("Cyrce's Circlet") 

--Wipe category too ensure the item list is up to date
categories:WipeCategory(L("Cyrce's Circlet"))

--Loop
for _, itemList in pairs(allItems) do
    for _, ItemID in pairs(itemList) do
        categories:AddItemToCategory(ItemID, L("Cyrce's Circlet"))
    end
end
