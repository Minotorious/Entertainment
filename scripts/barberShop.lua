--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                     BARBER SHOP                      | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\--------------------------------------------------------------------------]]--

local entertainment = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

entertainment:registerAssetId("models/barbershop.fbx/Prefab/BarberShopPart", "ENTERTAINMENT_PREFAB_BUILDING_PART_BARBERSHOP")
entertainment:registerAssetId("models/barbershop.fbx/Prefab/BarberShop_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_BARBERSHOP_CONSTRUCTION_STEPS")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

entertainment:registerAssetProcessor("models/barbershop.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

entertainment:configurePrefabFlagList("models/barbershop.fbx/Prefab/BarberShopPart", { "PLATFORM" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT_BARBERSHOP",
    Name = "ENTERTAINMENT_BARBERSHOP_NAME",
    Description = "ENTERTAINMENT_BARBERSHOP_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "ENTERTAINMENT_BARBERSHOP_PART"
    },
    SubAssetBuildingList = {},
    IsManuallyUnlocked = false,
    IsDestructible = true,
    IsEditable = false,
    IsClearTrees = true
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_BARBERSHOP_PART",
    Name = "ENTERTAINMENT_BARBERSHOP_PART_NAME",
    Description = "ENTERTAINMENT_BARBERSHOP_PART_DESC",
    Category = "CORE",
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_BARBERSHOP"
    },
    AssetBuildingFunction = "ENTERTAINMENT_BARBERSHOP_FUNCTION",
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_BARBERSHOP_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 8, 8 }),
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
                    Resource = "STONE",
                    Quantity = 20
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
            Estate = "CLERGY",
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
    Id = "ENTERTAINMENT_BARBER_JOB",
    JobName = "ENTERTAINMENT_BARBER_JOB_NAME",
    JobDescription = "ENTERTAINMENT_BARBER_JOB_DESC",
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
    Id = "ENTERTAINMENT_BARBERSHOP_FUNCTION",
    Name = "ENTERTAINMENT_BARBERSHOP_FUNCTION_NAME",
    IsPrivate = false,
    WorkerCapacity = 1,
    ProductionCycleDurationInSec = 60,
    RelatedJob = {
        Job = "ENTERTAINMENT_BARBER_JOB",
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
    "ENTERTAINMENT_BARBER_JOB"
}
entertainment:overrideAsset({ Id = "SERF", CompatibleJobList = overridenCompatibleJobList })
entertainment:overrideAsset({ Id = "COMMONER", CompatibleJobList = overridenCompatibleJobList })
entertainment:overrideAsset({ Id = "CITIZEN", CompatibleJobList = overridenCompatibleJobList })

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
