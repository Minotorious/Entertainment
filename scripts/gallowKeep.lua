--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      BATHHOUSE                       | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\--------------------------------------------------------------------------]]--

local entertainment = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

entertainment:registerAssetId("models/gallow_keep.fbx/Prefab/Keep_Group_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_GALLOW_KEEP")
entertainment:registerAssetId("models/gallow_keep.fbx/Prefab/Keep_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_GALLOW_KEEP_CONSTRUCTION_STEPS")

entertainment:registerAssetId("models/keep_extension.fbx/Prefab/Keep_Extension_Group_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_KEEP_EXTENSION")
entertainment:registerAssetId("models/keep_extension.fbx/Prefab/Keep_Extension_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_KEEP_EXTENSION_CONSTRUCTION_STEPS")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

entertainment:registerAssetProcessor("models/gallow_keep.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

entertainment:registerPrefabComponent("models/gallow_keep.fbx/Prefab/Keep_Group_Part/Execution_Platform", {
    DataType = "COMP_GROUNDED"
})

entertainment:configurePrefabFlagList("models/gallow_keep.fbx/Prefab/Keep_Group_Part", {"PLATFORM"})

entertainment:registerAssetProcessor("models/keep_extension.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT_GALLOW_KEEP",
    Name = "ENTERTAINMENT_GALLOW_KEEP_NAME",
    Description = "ENTERTAINMENT_GALLOW_KEEP_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "ENTERTAINMENT_GALLOW_KEEP_PART", "ENTERTAINMENT_KEEP_EXTENSION_PART"
    },
    SubAssetBuildingList = {},
    IsManuallyUnlocked = false,
    IsDestructible = true,
    IsEditable = false,
    IsClearTrees = true
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_GALLOW_KEEP_PART",
    Name = "ENTERTAINMENT_GALLOW_KEEP_PART_NAME",
    Description = "ENTERTAINMENT_GALLOW_KEEP_PART_DESC",
    Category = "CORE",
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_GALLOW_KEEP"
    },
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_GALLOW_KEEP_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 10, 10 }),
                Type = { DEFAULT = true, NAVIGABLE = true, GRASS_CLEAR = true }
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
                    Quantity = 50
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "KINGDOM",
            Quantity = 2
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

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_KEEP_EXTENSION_PART",
    Name = "ENTERTAINMENT_KEEP_EXTENSION_PART_NAME",
    Description = "ENTERTAINMENT_KEEP_EXTENSION_PART_DESC",
    Category = BUILDING_PART_TYPE.EXTENSION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_KEEP_EXTENSION"
    },
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_KEEP_EXTENSION_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 5, 5 }),
                Type = { DEFAULT = true, NAVIGABLE = true, GRASS_CLEAR = true }
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
                    Quantity = 10
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "KINGDOM",
            Quantity = 1
        }
    }
})

--[[------------------------- JOBS & BUILDING FUNCTIONS -----------------------]]--

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
