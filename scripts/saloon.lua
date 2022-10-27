--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      BATHHOUSE                       | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\--------------------------------------------------------------------------]]--

local entertainment = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

entertainment:registerAssetId("models/saloon.fbx/Prefab/Saloon_Group_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_SALOON")
entertainment:registerAssetId("models/saloon.fbx/Prefab/Saloon_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_SALOON_CONSTRUCTION_STEPS")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

entertainment:registerAssetProcessor("models/saloon.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

entertainment:registerPrefabComponent("models/saloon.fbx/Prefab/Saloon_Group_Part/Ground_Floor_Shed", {
    DataType = "COMP_GROUNDED"
})

entertainment:registerPrefabComponent("models/saloon.fbx/Prefab/Saloon_Group_Part/Bench", {
    DataType = "COMP_GROUNDED"
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT_SALOON",
    Name = "ENTERTAINMENT_SALOON_NAME",
    Description = "ENTERTAINMENT_SALOON_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "ENTERTAINMENT_SALOON_PART"
    },
    SubAssetBuildingList = {},
    IsManuallyUnlocked = false,
    IsDestructible = true,
    IsEditable = false,
    IsClearTrees = true
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_SALOON_PART",
    Name = "ENTERTAINMENT_SALOON_PART_NAME",
    Description = "ENTERTAINMENT_SALOON_PART_DESC",
    Category = "CORE",
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_SALOON"
    },
    AssetBuildingFunction = "ENTERTAINMENT_SALOON_FUNCTION",
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_SALOON_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 10, 10 }),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    Cost = {
        UpkeepCost = {
            {
                Resource = "GOLD",
                Quantity = 1
            }
        },
        ResourceNeededList = {
            {
                {
                    Resource = "WOOD",
                    Quantity = 25
                },
                {
                    Resource = "PLANK",
                    Quantity = 30
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "KINGDOM",
            Quantity = 3
        }
    },
    DesirabilityModifiers = {
        {
            Desirability = "DESIRABILITY_RESIDENTIAL",
            Radius = 50,
            Value = 0.5
        }
    }
})

--[[------------------------- JOBS & BUILDING FUNCTIONS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING_FUNCTION_MARKET",
    Id = "ENTERTAINMENT_SALOON_FUNCTION",
    Name = "ENTERTAINMENT_SALOON_FUNCTION_NAME",
    IsPrivate = false,
    WorkerCapacity = 1,
    ProductionCycleDurationInSec = 60,
    RelatedJob = {
        Job = "BARTENDER",
        Behavior = "BEHAVIOR_WORK"
    },
    TypeList = { "ENTERTAINMENT" },
    IsOverrideCapacity = true,
    CapacityPerSlot = 20,
    HasResourceDepot = false,
    ResourceProduced = {
        { Resource = "RESOURCE_ENTERTAINMENT", Quantity = 2 },
    }
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
