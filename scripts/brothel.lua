--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                       BROTHEL                        | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\--------------------------------------------------------------------------]]--

local entertainment = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

entertainment:registerAssetId("models/brothel.fbx/Prefab/Brothel_Group_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_BROTHEL")
entertainment:registerAssetId("models/brothel.fbx/Prefab/Brothel_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_BROTHEL_CONSTRUCTION_STEPS")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

entertainment:registerAssetProcessor("models/brothel.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT_BROTHEL",
    Name = "ENTERTAINMENT_BROTHEL_NAME",
    Description = "ENTERTAINMENT_BROTHEL_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "ENTERTAINMENT_BROTHEL_PART"
    },
    SubAssetBuildingList = {},
    IsManuallyUnlocked = false,
    IsDestructible = true,
    IsEditable = false,
    IsClearTrees = true
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_BROTHEL_PART",
    Name = "ENTERTAINMENT_BROTHEL_PART_NAME",
    Description = "ENTERTAINMENT_BROTHEL_PART_DESC",
    Category = "CORE",
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_BROTHEL"
    },
    AssetBuildingFunction = "ENTERTAINMENT_BROTHEL_FUNCTION",
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_BROTHEL_CONSTRUCTION_STEPS",
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
                    Resource = "PLANK",
                    Quantity = 25
                },
                {
                    Resource = "STONE",
                    Quantity = 25
                },
                {
                    Resource = "GLASS",
                    Quantity = 10
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
    DataType = "JOB",
    Id = "ENTERTAINMENT_PROCURER_JOB",
    JobName = "ENTERTAINMENT_PROCURER_JOB_NAME",
    JobDescription = "ENTERTAINMENT_PROCURER_JOB_DESC",
    IsLockedByDefault = true,
    UseWorkplaceBehavior = true,
    DefaultBehavior = "BEHAVIOR_WORK",
    AssetJobProgression = "DEFAULT_JOB_PROGRESSION",
    CharacterSetup = {
        WalkAnimation = "WALKING",
        IdleAnimation = "IDLE"
    }	
})

entertainment:registerAsset({
    DataType = "BUILDING_FUNCTION_MARKET",
    Id = "ENTERTAINMENT_BROTHEL_FUNCTION",
    Name = "ENTERTAINMENT_BROTHEL_FUNCTION_NAME",
    IsPrivate = false,
    WorkerCapacity = 1,
    ProductionCycleDurationInSec = 60,
    RelatedJob = {
        Job = "ENTERTAINMENT_PROCURER_JOB",
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

local overridenCompatibleJobList = {
    Action = "APPEND",
    "ENTERTAINMENT_PROCURER_JOB"
}
entertainment:overrideAsset({ Id = "SERF", CompatibleJobList = overridenCompatibleJobList })
entertainment:overrideAsset({ Id = "COMMONER", CompatibleJobList = overridenCompatibleJobList })
entertainment:overrideAsset({ Id = "CITIZEN", CompatibleJobList = overridenCompatibleJobList })


--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
