--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      BATHHOUSE                       | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\--------------------------------------------------------------------------]]--

local entertainment = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

entertainment:registerAssetId("models/bathhouse.fbx/Prefab/BathHouse_Group_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_BATHHOUSE")
entertainment:registerAssetId("models/bathhouse.fbx/Prefab/BathHouse_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_BATHHOUSE_CONSTRUCTION_STEPS")

entertainment:registerAssetId("models/bath.fbx/Prefab/Bath_Group_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_BATH")
entertainment:registerAssetId("models/bath.fbx/Prefab/Bath_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_BATH_CONSTRUCTION_STEPS")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

entertainment:registerAssetProcessor("models/bathhouse.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

entertainment:registerPrefabComponent("models/bathhouse.fbx/Prefab/BathHouse_Group_Part/Foundation_Door", {
    DataType = "COMP_GROUNDED"
})

entertainment:configurePrefabFlagList("models/bathhouse.fbx/Prefab/BathHouse_Group_Part", { "PLATFORM" })

entertainment:registerAssetProcessor("models/bath.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT_BATHHOUSE",
    Name = "ENTERTAINMENT_BATHHOUSE_NAME",
    Description = "ENTERTAINMENT_BATHHOUSE_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "ENTERTAINMENT_BATHHOUSE_PART", "ENTERTAINMENT_BATH_PART"
    },
    RequiredPartList = {
        {
            Category = BUILDING_PART_TYPE.CORE,
            Min = 1
        },
        {
            Category = BUILDING_PART_TYPE.EXTENSION,
            Min = 1
        }
    },
    SubAssetBuildingList = {},
    IsManuallyUnlocked = false,
    IsDestructible = true,
    IsEditable = false,
    IsClearTrees = true
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_BATHHOUSE_PART",
    Name = "ENTERTAINMENT_BATHHOUSE_PART_NAME",
    Description = "ENTERTAINMENT_BATHHOUSE_PART_DESC",
    Category = BUILDING_PART_TYPE.CORE,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_BATHHOUSE"
    },
    AssetBuildingFunction =  "ENTERTAINMENT_BATHHOUSE_FUNCTION",
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_BATHHOUSE_CONSTRUCTION_STEPS",
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
                    Quantity = 75
                },
                {
                    Resource = "STONE",
                    Quantity = 25
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "CLERGY",
            Quantity = 2
        }
    },
    DesirabilityModifiers = {
        {
            Desirability = "DESIRABILITY_RESIDENTIAL",
            Radius = 50,
            Value = 0.25
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_BATH_PART",
    Name = "ENTERTAINMENT_BATH_PART_NAME",
    Description = "ENTERTAINMENT_BATH_PART_DESC",
    Category = BUILDING_PART_TYPE.EXTENSION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_BATH"
    },
    AssetBuildingFunction =  "ENTERTAINMENT_BATHHOUSE_FUNCTION",
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_BATH_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 5, 10 }),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            }
        }
    },
    Cost = {
        UpkeepCost = {
            {
                Resource = "GOLD",
                Quantity = 2
            }
        },
        ResourceNeededList = {
            {
                {
                    Resource = "POLISHED_STONE",
                    Quantity = 20
                },
                {
                    Resource = "WATER",
                    Quantity = 5
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "CLERGY",
            Quantity = 1
        }
    },
    DesirabilityModifiers = {
        {
            Desirability = "DESIRABILITY_RESIDENTIAL",
            Radius = 50,
            Value = 0.25
        }
    }
})

--[[------------------------- JOBS & BUILDING FUNCTIONS -----------------------]]--

entertainment:registerAsset({
    DataType = "JOB",
    Id = "ENTERTAINMENT_CLEANER_JOB",
    JobName = "ENTERTAINMENT_CLEANER_JOB_NAME",
    JobDescription = "ENTERTAINMENT_CLEANER_JOB_DESC",
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
    Id = "ENTERTAINMENT_BATHHOUSE_FUNCTION",
    Name = "ENTERTAINMENT_BATHHOUSE_FUNCTION_NAME",
    Description = "ENTERTAINMENT_BATHHOUSE_FUNCTION_DESC",
    IsPrivate = false,
    WorkerCapacity = 1,
    ProductionCycleDurationInSec = 60,
    RelatedJob = {
        Job = "ENTERTAINMENT_CLEANER_JOB",
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
    "ENTERTAINMENT_CLEANER_JOB"
}

entertainment:overrideAsset({ Id = "SERF", CompatibleJobList = overridenCompatibleJobList })
entertainment:overrideAsset({ Id = "COMMONER", CompatibleJobList = overridenCompatibleJobList })
entertainment:overrideAsset({ Id = "CITIZEN", CompatibleJobList = overridenCompatibleJobList })


--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
