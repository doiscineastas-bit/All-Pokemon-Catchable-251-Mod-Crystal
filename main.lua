local Crystal251 = {}

function Crystal251.OnInit()
    print("Starting Mod: All Pokemon Catchable 251...")

    ---------------------------------------------------------
    -- 1. STONE EVOLUTIONS
    ---------------------------------------------------------
    -- Replaces trade evolutions with evolutionary stones
    local new_evolutions = {
        ["HAUNTER"]   = { method = "ITEM", item = "MOON_STONE",  target = "GENGAR" },
        ["MACHOKE"]   = { method = "ITEM", item = "SUN_STONE",   target = "MACHAMP" },
        ["GRAVELER"]  = { method = "ITEM", item = "SUN_STONE",   target = "GOLEM" },
        ["KADABRA"]   = { method = "ITEM", item = "MOON_STONE",  target = "ALAKAZAM" },
        ["SEADRA"]    = { method = "ITEM", item = "WATER_STONE", target = "KINGDRA" },
        ["ONIX"]      = { method = "ITEM", item = "SUN_STONE",   target = "STEELIX" },
        ["SCYTHER"]   = { method = "ITEM", item = "LEAF_STONE",  target = "SCIZOR" },
        ["SLOWPOKE"]  = { method = "ITEM", item = "WATER_STONE", target = "SLOWKING" },
        ["POLIWHIRL"] = { method = "ITEM", item = "MOON_STONE",  target = "POLITOED" },
        ["PORYGON"]   = { method = "ITEM", item = "THUNDERSTONE",target = "PORYGON2" }
    }

    Mod.hook("GetEvoData", function(species, original_evos)
        if new_evolutions[species] then 
            return { new_evolutions[species] } 
        end
        return original_evos
    end)

    ---------------------------------------------------------
    -- 2. GRASS & CAVE ENCOUNTERS (WALKING)
    ---------------------------------------------------------
    -- Each time of day must have exactly 7 slots: 30%, 30%, 20%, 10%, 5%, 4%, 1%
    local grass_encounters = {
        ["ROUTE_31"] = {
            -- Chikorita 10% (Morn)
            MORN = { { chance = 30, species = "LEDYBA" }, { chance = 30, species = "CATERPIE" }, { chance = 20, species = "BELLSPROUT" }, { chance = 10, species = "CHIKORITA" }, { chance = 5, species = "PIDGEY" }, { chance = 4, species = "HOPPIP" }, { chance = 1, species = "RATTATA" } }
        },
        ["ROUTE_32"] = {
            -- Mareep 30% (Morn/Day), Totodile 20% (Day)
            MORN = { { chance = 30, species = "MAREEP" }, { chance = 30, species = "EKANS" }, { chance = 20, species = "BELLSPROUT" }, { chance = 10, species = "HOPPIP" }, { chance = 5, species = "ZUBAT" }, { chance = 4, species = "RATTATA" }, { chance = 1, species = "ZUBAT" } },
            DAY = { { chance = 30, species = "MAREEP" }, { chance = 30, species = "EKANS" }, { chance = 20, species = "TOTODILE" }, { chance = 10, species = "HOPPIP" }, { chance = 5, species = "ZUBAT" }, { chance = 4, species = "RATTATA" }, { chance = 1, species = "ZUBAT" } }
        },
        ["ROUTE_36"] = {
            -- Vulpix 30% (Morn/Day), Houndour 30% (Nite)
            MORN = { { chance = 30, species = "VULPIX" }, { chance = 30, species = "LEDYBA" }, { chance = 20, species = "BELLSPROUT" }, { chance = 10, species = "GROWLITHE" }, { chance = 5, species = "PIDGEY" }, { chance = 4, species = "STANTLER" }, { chance = 1, species = "RATTATA" } },
            DAY = { { chance = 30, species = "VULPIX" }, { chance = 30, species = "PIDGEY" }, { chance = 20, species = "BELLSPROUT" }, { chance = 10, species = "GROWLITHE" }, { chance = 5, species = "PIDGEY" }, { chance = 4, species = "STANTLER" }, { chance = 1, species = "RATTATA" } },
            NITE = { { chance = 30, species = "HOUNDOUR" }, { chance = 30, species = "HOOTHOOT" }, { chance = 20, species = "BELLSPROUT" }, { chance = 10, species = "GROWLITHE" }, { chance = 5, species = "HOOTHOOT" }, { chance = 4, species = "STANTLER" }, { chance = 1, species = "RATTATA" } }
        },
        ["ROUTE_37"] = {
            -- Vulpix 30% (Morn/Day), Houndour 30% (Nite)
            MORN = { { chance = 30, species = "VULPIX" }, { chance = 30, species = "LEDYBA" }, { chance = 20, species = "GROWLITHE" }, { chance = 10, species = "PIDGEY" }, { chance = 5, species = "PIDGEOTTO" }, { chance = 4, species = "GROWLITHE" }, { chance = 1, species = "LEDYBA" } },
            DAY = { { chance = 30, species = "VULPIX" }, { chance = 30, species = "PIDGEY" }, { chance = 20, species = "GROWLITHE" }, { chance = 10, species = "PIDGEY" }, { chance = 5, species = "PIDGEOTTO" }, { chance = 4, species = "GROWLITHE" }, { chance = 1, species = "PIDGEY" } },
            NITE = { { chance = 30, species = "HOUNDOUR" }, { chance = 30, species = "SPINARAK" }, { chance = 20, species = "STANTLER" }, { chance = 10, species = "HOOTHOOT" }, { chance = 5, species = "NOCTOWL" }, { chance = 4, species = "STANTLER" }, { chance = 1, species = "SPINARAK" } }
        },
        ["ROUTE_38"] = {
            -- Murkrow 30% (Nite)
            NITE = { { chance = 30, species = "MURKROW" }, { chance = 30, species = "MEOWTH" }, { chance = 20, species = "MAGNEMITE" }, { chance = 10, species = "RATTATA" }, { chance = 5, species = "RATICATE" }, { chance = 4, species = "MEOWTH" }, { chance = 1, species = "MAGNEMITE" } }
        },
        ["ROUTE_42"] = {
            -- Mankey 30% (Morn/Day)
            MORN = { { chance = 30, species = "MANKEY" }, { chance = 30, species = "EKANS" }, { chance = 20, species = "SPEAROW" }, { chance = 10, species = "ARBOK" }, { chance = 5, species = "FEAROW" }, { chance = 4, species = "ARBOK" }, { chance = 1, species = "GOLBAT" } },
            DAY = { { chance = 30, species = "MANKEY" }, { chance = 30, species = "EKANS" }, { chance = 20, species = "SPEAROW" }, { chance = 10, species = "ARBOK" }, { chance = 5, species = "FEAROW" }, { chance = 4, species = "ARBOK" }, { chance = 1, species = "GOLBAT" } }
        },
        ["ROUTE_9"] = {
            -- Mankey 30% (Morn/Day)
            MORN = { { chance = 30, species = "MANKEY" }, { chance = 30, species = "RATTATA" }, { chance = 20, species = "SPEAROW" }, { chance = 10, species = "RATICATE" }, { chance = 5, species = "FEAROW" }, { chance = 4, species = "MAROWAK" }, { chance = 1, species = "RATICATE" } },
            DAY = { { chance = 30, species = "MANKEY" }, { chance = 30, species = "RATTATA" }, { chance = 20, species = "SPEAROW" }, { chance = 10, species = "RATICATE" }, { chance = 5, species = "FEAROW" }, { chance = 4, species = "MAROWAK" }, { chance = 1, species = "RATICATE" } }
        },
        ["ROUTE_43"] = {
            -- Girafarig 30% (All times)
            MORN = { { chance = 30, species = "GIRAFARIG" }, { chance = 30, species = "PIDGEOTTO" }, { chance = 20, species = "FLAAFFY" }, { chance = 10, species = "FARFETCH_D" }, { chance = 5, species = "FLAAFFY" }, { chance = 4, species = "PIDGEOTTO" }, { chance = 1, species = "PIDGEOTTO" } },
            DAY = { { chance = 30, species = "GIRAFARIG" }, { chance = 30, species = "PIDGEOTTO" }, { chance = 20, species = "FLAAFFY" }, { chance = 10, species = "FARFETCH_D" }, { chance = 5, species = "FLAAFFY" }, { chance = 4, species = "PIDGEOTTO" }, { chance = 1, species = "PIDGEOTTO" } },
            NITE = { { chance = 30, species = "GIRAFARIG" }, { chance = 30, species = "VENONAT" }, { chance = 20, species = "NOCTOWL" }, { chance = 10, species = "FLAAFFY" }, { chance = 5, species = "VENOMOTH" }, { chance = 4, species = "NOCTOWL" }, { chance = 1, species = "VENOMOTH" } }
        },
        ["DARK_CAVE_VIOLET_ENTRANCE"] = {
            -- Cyndaquil 40% (Nite) -> 30% + 10% slots
            NITE = { { chance = 30, species = "CYNDAQUIL" }, { chance = 30, species = "GEODUDE" }, { chance = 20, species = "ZUBAT" }, { chance = 10, species = "CYNDAQUIL" }, { chance = 5, species = "GEODUDE" }, { chance = 4, species = "ZUBAT" }, { chance = 1, species = "DUNSPARCE" } }
        },
        ["ILEX_FOREST"] = {
            -- Bulbasaur 5% (Morn)
            MORN = { { chance = 30, species = "CATERPIE" }, { chance = 30, species = "WEEDLE" }, { chance = 20, species = "METAPOD" }, { chance = 10, species = "KAKUNA" }, { chance = 5, species = "BULBASAUR" }, { chance = 4, species = "PIDGEY" }, { chance = 1, species = "ZUBAT" } }
        },
        ["BURNED_TOWER_B1F"] = {
            -- Slugma 30% (Day), Charmander 10% (Nite)
            DAY = { { chance = 30, species = "SLUGMA" }, { chance = 30, species = "KOFFING" }, { chance = 20, species = "KOFFING" }, { chance = 10, species = "ZUBAT" }, { chance = 5, species = "ZUBAT" }, { chance = 4, species = "RATTATA" }, { chance = 1, species = "RATICATE" } },
            NITE = { { chance = 30, species = "KOFFING" }, { chance = 30, species = "KOFFING" }, { chance = 20, species = "ZUBAT" }, { chance = 10, species = "CHARMANDER" }, { chance = 5, species = "ZUBAT" }, { chance = 4, species = "RATTATA" }, { chance = 1, species = "RATICATE" } }
        },
        ["TIN_TOWER_2F"] = {
            -- Natu 30% (Day), Xatu 20% (Day/Nite)
            DAY = { { chance = 30, species = "RATTATA" }, { chance = 30, species = "NATU" }, { chance = 20, species = "XATU" }, { chance = 10, species = "RATTATA" }, { chance = 5, species = "RATICATE" }, { chance = 4, species = "RATICATE" }, { chance = 1, species = "RATICATE" } },
            NITE = { { chance = 30, species = "GASTLY" }, { chance = 30, species = "RATTATA" }, { chance = 20, species = "XATU" }, { chance = 10, species = "GASTLY" }, { chance = 5, species = "RATICATE" }, { chance = 4, species = "RATICATE" }, { chance = 1, species = "RATICATE" } }
        },
        ["UNION_CAVE_B1F"] = {
            -- Squirtle 10% (Morn/Day) on land
            MORN = { { chance = 30, species = "ZUBAT" }, { chance = 30, species = "GOLBAT" }, { chance = 20, species = "ZUBAT" }, { chance = 10, species = "SQUIRTLE" }, { chance = 5, species = "GEODUDE" }, { chance = 4, species = "ONIX" }, { chance = 1, species = "ONIX" } },
            DAY = { { chance = 30, species = "ZUBAT" }, { chance = 30, species = "GOLBAT" }, { chance = 20, species = "ZUBAT" }, { chance = 10, species = "SQUIRTLE" }, { chance = 5, species = "GEODUDE" }, { chance = 4, species = "ONIX" }, { chance = 1, species = "ONIX" } }
        },
        ["WHIRL_ISLAND_LUGIA_CHAMBER"] = {
            -- Omanyte 5% (Morn/Day), Kabuto 10% (Nite)
            MORN = { { chance = 30, species = "KRABBY" }, { chance = 30, species = "ZUBAT" }, { chance = 20, species = "KINGLER" }, { chance = 10, species = "GOLBAT" }, { chance = 5, species = "OMANYTE" }, { chance = 4, species = "GOLBAT" }, { chance = 1, species = "SEEL" } },
            DAY = { { chance = 30, species = "KRABBY" }, { chance = 30, species = "ZUBAT" }, { chance = 20, species = "KINGLER" }, { chance = 10, species = "GOLBAT" }, { chance = 5, species = "OMANYTE" }, { chance = 4, species = "GOLBAT" }, { chance = 1, species = "SEEL" } },
            NITE = { { chance = 30, species = "KRABBY" }, { chance = 30, species = "ZUBAT" }, { chance = 20, species = "KINGLER" }, { chance = 10, species = "KABUTO" }, { chance = 5, species = "SEEL" }, { chance = 4, species = "GOLBAT" }, { chance = 1, species = "SEEL" } }
        },
        
        -- ==========================================
        -- SECRET LOCATIONS (1% Encounters)
        -- ==========================================
        ["ROUTE_10_NORTH"] = {
            -- Zapdos 1% (Day) outside Power Plant
            DAY = { { chance = 30, species = "VOLTORB" }, { chance = 30, species = "MAGNEMITE" }, { chance = 20, species = "RATICATE" }, { chance = 10, species = "MAGNETON" }, { chance = 5, species = "ELECTABUZZ" }, { chance = 4, species = "ELECTABUZZ" }, { chance = 1, species = "ZAPDOS" } }
        },
        ["SILVER_CAVE_ROOM_2"] = {
            -- Moltres 1% (Morn)
            MORN = { { chance = 30, species = "GOLBAT" }, { chance = 30, species = "MACHOKE" }, { chance = 20, species = "URSARING" }, { chance = 10, species = "PARASECT" }, { chance = 5, species = "PARASECT" }, { chance = 4, species = "MISDREAVUS" }, { chance = 1, species = "MOLTRES" } }
        },
        ["ICE_PATH_B3F"] = {
            -- Articuno 1% (Nite)
            NITE = { { chance = 30, species = "ZUBAT" }, { chance = 30, species = "JYNX" }, { chance = 20, species = "GOLBAT" }, { chance = 10, species = "SWINUB" }, { chance = 5, species = "DELIBIRD" }, { chance = 4, species = "SNEASEL" }, { chance = 1, species = "ARTICUNO" } }
        },
        ["SEAFOAM_GYM"] = {
            -- Mewtwo 1% (Nite) hiding with Blaine
            NITE = { { chance = 30, species = "ZUBAT" }, { chance = 30, species = "GOLBAT" }, { chance = 20, species = "KRABBY" }, { chance = 10, species = "KINGLER" }, { chance = 5,  species = "GOLDUCK" }, { chance = 4,  species = "GOLBAT" }, { chance = 1,  species = "MEWTWO" } }
        },
        ["SILVER_CAVE_ROOM_3"] = {
            -- Mew 1% (Morn) at the summit with Red
            MORN = { { chance = 30, species = "GOLBAT" }, { chance = 30, species = "ONIX" }, { chance = 20, species = "GRAVELER" }, { chance = 10, species = "URSARING" }, { chance = 5, species = "DONPHAN" }, { chance = 4, species = "LARVITAR" }, { chance = 1, species = "MEW" } }
        }
    }

    Mod.hook("GetGrassEncounters", function(map_id, time_of_day, original_table)
        if grass_encounters[map_id] and grass_encounters[map_id][time_of_day] then
            return grass_encounters[map_id][time_of_day]
        end
        return original_table
    end)

    ---------------------------------------------------------
    -- 3. WATER ENCOUNTERS (SURFING)
    ---------------------------------------------------------
    -- Each water route must have exactly 3 slots: 60%, 30%, 10%
    local water_encounters = {
        ["ROUTE_41"] = {
            -- Remoraid 30%
            { chance = 60, species = "TENTACOOL" },
            { chance = 30, species = "REMORAID" },
            { chance = 10, species = "MANTINE" }
        },
        ["UNION_CAVE_B1F"] = {
            -- Squirtle 40% (30% + 10% slots)
            { chance = 60, species = "ZUBAT" },
            { chance = 30, species = "SQUIRTLE" },
            { chance = 10, species = "SQUIRTLE" }
        }
    }

    Mod.hook("GetWaterEncounters", function(map_id, original_table)
        if water_encounters[map_id] then
            return water_encounters[map_id]
        end
        return original_table
    end)
end

-- Registers the Mod lifecycle in the Recomp engine
Mod.register(Crystal251)
