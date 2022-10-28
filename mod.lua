--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                     MAIN MOD FILE                    | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                     ENTERTAINMENT                    | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local entertainment = foundation.createMod();

--[[------------------------------ ENUMERATIONS -------------------------------]]--

entertainment:registerEnumValue("BUILDING_PART_TYPE", "EXTENSION")

--[[----------------------------- VILLAGER NEEDS ------------------------------]]--

if not foundation.isModLoaded("9b491b45-6cf6-471a-aa7f-fdbed6c6275a") then -- Street Performers
    entertainment:overrideAsset({
        Id = "COMMONER",
        AssetVillagerNeedList = {
            Action = "APPEND", "NEED_ENTERTAINMENT"
        }
    })
end

--[[-------------------------------- DO FILES ---------------------------------]]--

entertainment:dofile("scripts/barberShop.lua")
entertainment:dofile("scripts/bathhouse.lua")
entertainment:dofile("scripts/brothel.lua")
entertainment:dofile("scripts/gallowKeep.lua")
entertainment:dofile("scripts/saloon.lua")
entertainment:dofile("scripts/hauntedHouse.lua")

--[[------------------------------ MAIN BUILDING ------------------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT",
    Name = "ENTERTAINMENT_NAME",
    Description = "ENTERTAINMENT_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetMiniatureBuildingPart = "ENTERTAINMENT_BROTHEL_PART",
    AssetBuildingPartList = {},
    SubAssetBuildingList = {
        "ENTERTAINMENT_BARBERSHOP",
        "ENTERTAINMENT_BATHHOUSE",
        "ENTERTAINMENT_BROTHEL",
        "ENTERTAINMENT_GALLOW_KEEP",
        "ENTERTAINMENT_HAUNTED_HOUSE",
        "ENTERTAINMENT_SALOON"
    },
    IsManuallyUnlocked = true,
    IsDestructible = true,
    IsEditable = true,
    IsClearTrees = true
})

--[[------------------------------- UNLOCKABLES -------------------------------]]--

entertainment:registerAsset({
    DataType = "UNLOCKABLE",
    Id = "UNLOCKABLE_ENTERTAINMENT",
    Name = "UNLOCKABLE_ENTERTAINMENT_NAME",
    Description = "UNLOCKABLE_ENTERTAINMENT_DESC",
    DataCost = {
        DataInfluenceCostList = {},
        ResourceCollection = {
            { Resource = "GOLD_COINS", Quantity = 100 }
        }
    },
    PrerequisiteUnlockableList = {},
    ActionList = {
        {
            DataType = "GAME_ACTION_UNLOCK_BUILDING_LIST",
            BuildingProgressData = {
                AssetBuildingList = {
                    "ENTERTAINMENT"
                }
            }
        }
    },
    UnlockableImage = "ICON_ENTERTAINMENT"
})

entertainment:overrideAsset({
    Id = "PROGRESS_TIER_COMMON_T3",
    UnlockableList = {
        Action = "APPEND",
        "UNLOCKABLE_ENTERTAINMENT"
    }
})