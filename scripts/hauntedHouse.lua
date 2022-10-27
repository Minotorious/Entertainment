--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                    HAUNTED HOUSE                     | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\--------------------------------------------------------------------------]]--

local entertainment = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Core_Root_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_ROOT")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Core_Basement_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_BASEMENT")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Core_Tilling_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_TILING_A")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Core_Top_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_TOP")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Core_Root_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_ROOT_CONSTRUCTION_STEPS")

entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_A_Root_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_ROOT")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_A_Basement_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_BASEMENT")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_A_Tilling_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_TILING_A")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_A_Top_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_TOP")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_A_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_CONSTRUCTION_STEPS")

entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_B_Root_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_ROOT")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_B_Basement_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_BASEMENT")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_B_Tilling_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_TILING_A")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_B_Top_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_TOP")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_B_Construction_Steps", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_CONSTRUCTION_STEPS")

entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Extension_Tower_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_TOWER_A")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Balcony_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_BALCONY_A")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Door_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_DOOR_A")

entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Windows_A_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_WINDOWS_A")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Windows_B_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_WINDOWS_B")
entertainment:registerAssetId("models/haunted_house.fbx/Prefab/Windows_C_Part", "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_WINDOWS_C")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

entertainment:registerAssetProcessor("models/haunted_house.fbx", {
    DataType = "BUILDING_ASSET_PROCESSOR"
})

entertainment:registerPrefabComponent("models/haunted_house.fbx/Prefab/Balcony_A_Part", {
    DataType = "COMP_BUILDING_PART",
    BuildingPartType = "MINOR"
})

entertainment:registerPrefabComponent("models/haunted_house.fbx/Prefab/Windows_A_Part", {
    DataType = "COMP_BUILDING_PART",
    BuildingPartType = "MINOR"
})

entertainment:registerPrefabComponent("models/haunted_house.fbx/Prefab/Windows_B_Part", {
    DataType = "COMP_BUILDING_PART",
    BuildingPartType = "MINOR"
})

entertainment:registerPrefabComponent("models/haunted_house.fbx/Prefab/Windows_C_Part", {
    DataType = "COMP_BUILDING_PART",
    BuildingPartType = "MINOR"
})

entertainment:registerPrefabComponent("models/haunted_house.fbx/Prefab/Extension_Tower_A_Part", {
    DataType = "COMP_BUILDING_PART",
    BuildingPartType = "MINOR"
})

entertainment:registerPrefabComponent("models/haunted_house.fbx/Prefab/Door_A_Part", {
    DataType = "COMP_BUILDING_PART",
    BuildingPartType = "DOOR"
})

entertainment:configurePrefabFlagList("models/haunted_house.fbx/Prefab/Door_A_Part", { "PLATFORM" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_DESC",
    BuildingType = BUILDING_TYPE.SERVICE,
    AssetCoreBuildingPart = "BUILDING_PART_MONUMENT_POLE",
    AssetBuildingPartList = {
        "ENTERTAINMENT_HAUNTED_HOUSE_ROOT_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_DOOR_A_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_ROOT_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_ROOT_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_BALCONY_A_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_TOWER_A_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_A_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_B_PART",
        "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_C_PART"
    },
    SubAssetBuildingList = {},
    RequiredPartList = {
        {
            Category = BUILDING_PART_TYPE.CORE,
            Min = 1
        },
        {
            Category = BUILDING_PART_TYPE.DOOR,
            Min = 1
        },
        {
            Category = BUILDING_PART_TYPE.EXTENSION,
            Min = 2
        },
        {
            Category = BUILDING_PART_TYPE.DECORATION,
            Min = 3
        }
    },
    AssetBuildingFunction = "ENTERTAINMENT_BUILDING_FUNCTION_HAUNTED_HOUSE",
    IsManuallyUnlocked = false,
    IsDestructible = true,
    IsEditable = false,
    IsClearTrees = true
})

local function registerDefaultBuildingPart(_nodePrefix)
    entertainment:registerAsset({
        DataType = "BUILDING_PART",
        Id = "ENTERTAINMENT_" .. _nodePrefix .. "_PART",
        ConstructorData = {
            DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
            CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_" .. _nodePrefix
        },
        Cost = {
            ResourceNeededList = {
                {
                    {
                        Resource = "PLANK",
                        Quantity = 5
                    }
                }
            }
        }
    })
end

local defaultNodePrefixList = {
    "HAUNTED_HOUSE_BASEMENT",
    "HAUNTED_HOUSE_TILING_A",
    "HAUNTED_HOUSE_TOP",
    "HAUNTED_HOUSE_EXTENSION_A_BASEMENT",
    "HAUNTED_HOUSE_EXTENSION_A_TILING_A",
    "HAUNTED_HOUSE_EXTENSION_A_TOP",
    "HAUNTED_HOUSE_EXTENSION_B_BASEMENT",
    "HAUNTED_HOUSE_EXTENSION_B_TILING_A",
    "HAUNTED_HOUSE_EXTENSION_B_TOP"
}

for i, nodePrefix in ipairs(defaultNodePrefixList) do
    registerDefaultBuildingPart(nodePrefix)
end

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_ROOT_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_ROOT_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_ROOT_PART_DESC",
    Capacity = 10,
    Category = BUILDING_PART_TYPE.CORE,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_SCALER",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_ROOT",
        EndPart = "ENTERTAINMENT_HAUNTED_HOUSE_TOP_PART",
        FillerList = {
            "ENTERTAINMENT_HAUNTED_HOUSE_TILING_A_PART"
        },
        BasementFillerList = {
            "ENTERTAINMENT_HAUNTED_HOUSE_BASEMENT_PART"
        },
        MinimumScale = 1,
        IsVertical = true
    },
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_ROOT_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 6.5, 5 }),
                Type = { DEFAULT = true, NAVIGABLE = true, GRASS_CLEAR = true }
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
                    Resource = "PLANK",
                    Quantity = 25
                },
                {
                    Resource = "POLISHED_STONE",
                    Quantity = 10
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "LABOUR",
            Quantity = 3
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_ROOT_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_ROOT_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_ROOT_PART_DESC",
    Capacity = 10,
    Category = BUILDING_PART_TYPE.EXTENSION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_SCALER",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_ROOT",
        EndPart = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_TOP_PART",
        FillerList = {
            "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_TILING_A_PART"
        },
        BasementFillerList = {
            "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_A_BASEMENT_PART"
        },
        MinimumScale = 1,
        IsVertical = true
    },
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_A_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 6.5, 5 }),
                Type = { DEFAULT = true, NAVIGABLE = true, GRASS_CLEAR = true }
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
                    Resource = "PLANK",
                    Quantity = 25
                },
                {
                    Resource = "POLISHED_STONE",
                    Quantity = 10
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "LABOUR",
            Quantity = 2
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_ROOT_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_ROOT_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_ROOT_PART_DESC",
    Capacity = 5,
    Category = BUILDING_PART_TYPE.EXTENSION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_SCALER",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_ROOT",
        EndPart = "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_TOP_PART",
        FillerList = {
            "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_TILING_A_PART"
        },
        BasementFillerList = {
            "ENTERTAINMENT_HAUNTED_HOUSE_EXTENSION_B_BASEMENT_PART"
        },
        MinimumScale = 1,
        IsVertical = true
    },
    ConstructionVisual = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_EXTENSION_B_CONSTRUCTION_STEPS",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 2.5, 4.5 }),
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
                },
                {
                    Resource = "POLISHED_STONE",
                    Quantity = 5
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "LABOUR",
            Quantity = 2
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_DOOR_A_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_DOOR_A_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_DOOR_A_PART_DESC",
    Category = BUILDING_PART_TYPE.DOOR,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_DOOR_A"
    },
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle({ 3, 5 }),
                Type = { DEFAULT = true, NAVIGABLE = true, GRASS_CLEAR = true }
            }
        }
    },
    Cost = {
        ResourceNeededList = {
            {
                {
                    Resource = "WOOD",
                    Quantity = 5
                },
                {
                    Resource = "STONE",
                    Quantity = 5
                }
            }
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_TOWER_A_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_TOWER_A_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_TOWER_A_PART_DESC",
    Category = BUILDING_PART_TYPE.DECORATION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_TOWER_A"
    },
    Cost = {
        ResourceNeededList = {
            {
                {
                    Resource = "PLANK",
                    Quantity = 8
                },
                {
                    Resource = "POLISHED_STONE",
                    Quantity = 2
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "LABOUR",
            Quantity = 1
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_BALCONY_A_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_BALCONY_A_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_BALCONY_A_PART_DESC",
    Category = BUILDING_PART_TYPE.DECORATION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_BALCONY_A"
    },
    Cost = {
        ResourceNeededList = {
            {
                {
                    Resource = "PLANK",
                    Quantity = 5
                },
                {
                    Resource = "POLISHED_STONE",
                    Quantity = 2
                }
            }
        }
    },
    EstateSplendor = {
        {
            Estate = "LABOUR",
            Quantity = 1
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_A_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_A_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_A_PART_DESC",
    Category = BUILDING_PART_TYPE.DECORATION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_WINDOWS_A"
    },
    Cost = {
        ResourceNeededList = {
            {
                {
                    Resource = "WOOD",
                    Quantity = 5
                }
            }
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_B_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_B_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_B_PART_DESC",
    Category = BUILDING_PART_TYPE.DECORATION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_WINDOWS_B"
    },
    Cost = {
        ResourceNeededList = {
            {
                {
                    Resource = "WOOD",
                    Quantity = 3
                }
            }
        }
    }
})

entertainment:registerAsset({
    DataType = "BUILDING_PART",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_C_PART",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_C_PART_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_WINDOWS_C_PART_DESC",
    Category = BUILDING_PART_TYPE.DECORATION,
    ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
        CoreObjectPrefab = "ENTERTAINMENT_PREFAB_BUILDING_PART_HAUNTED_HOUSE_WINDOWS_C"
    },
    Cost = {
        ResourceNeededList = {
            {
                {
                    Resource = "WOOD",
                    Quantity = 5
                }
            }
        }
    }
})

--[[------------------------- JOBS & BUILDING FUNCTIONS -----------------------]]--

entertainment:registerAsset({
    DataType = "BUILDING_FUNCTION_CHURCH",
    Id = "ENTERTAINMENT_BUILDING_FUNCTION_HAUNTED_HOUSE",
    WorkerCapacity = 0,
    RelatedJob = { Job = "GATHERER", Behavior = "BEHAVIOR_WORK" },
    CapacityMultiplier = 2.0,
    AssetResourceGenerator = "ENTERTAINMENT_HAUNTED_HOUSE_RESOURCE_GENERATOR"
})

entertainment:registerAsset({
    DataType = "BUILDING_FUNCTION_RESOURCE_GENERATOR",
    Id = "ENTERTAINMENT_HAUNTED_HOUSE_RESOURCE_GENERATOR",
    Name = "ENTERTAINMENT_HAUNTED_HOUSE_RESOURCE_GENERATOR_NAME",
    Description = "ENTERTAINMENT_HAUNTED_HOUSE_RESOURCE_GENERATOR_DESC",
    ResourceGenerated = "RESOURCE_ENTERTAINMENT",
    IsForConsumer = true,
    IsInfinite = false
})

--[[----------------------------- PARTICLE SYSTEMS ----------------------------]]--
