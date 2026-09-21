local mod = ...
mod.log:info("Loading All Pokemon Catchable 251 for Crystal...")

---------------------------------------------------------
-- 1. STONE EVOLUTIONS (With Level 40 Fallback)
---------------------------------------------------------
-- Adicionamos evolução por Level 40 como "plano B" garantido 
-- caso a whitelist nativa da engine bloqueie o uso da pedra.
mod.content.pokemon:patch("HAUNTER",   { evolutions = { { method = "ITEM", item = "MOON_STONE", into = "GENGAR" },   { method = "LEVEL", level = 40, into = "GENGAR" } } })
mod.content.pokemon:patch("KADABRA",   { evolutions = { { method = "ITEM", item = "MOON_STONE", into = "ALAKAZAM" }, { method = "LEVEL", level = 40, into = "ALAKAZAM" } } })
mod.content.pokemon:patch("MACHOKE",   { evolutions = { { method = "ITEM", item = "SUN_STONE",  into = "MACHAMP" },  { method = "LEVEL", level = 40, into = "MACHAMP" } } })
mod.content.pokemon:patch("GRAVELER",  { evolutions = { { method = "ITEM", item = "SUN_STONE",  into = "GOLEM" },    { method = "LEVEL", level = 40, into = "GOLEM" } } })
mod.content.pokemon:patch("POLIWHIRL", { evolutions = { { method = "ITEM", item = "MOON_STONE", into = "POLITOED" }, { method = "LEVEL", level = 40, into = "POLITOED" } } })
mod.content.pokemon:patch("SLOWPOKE",  { evolutions = { { method = "ITEM", item = "WATER_STONE",into = "SLOWKING" }, { method = "LEVEL", level = 40, into = "SLOWKING" } } })
mod.content.pokemon:patch("ONIX",      { evolutions = { { method = "ITEM", item = "SUN_STONE",  into = "STEELIX" },  { method = "LEVEL", level = 40, into = "STEELIX" } } })
mod.content.pokemon:patch("SCYTHER",   { evolutions = { { method = "ITEM", item = "LEAF_STONE", into = "SCIZOR" },   { method = "LEVEL", level = 40, into = "SCIZOR" } } })
mod.content.pokemon:patch("SEADRA",    { evolutions = { { method = "ITEM", item = "WATER_STONE",into = "KINGDRA" },  { method = "LEVEL", level = 40, into = "KINGDRA" } } })
mod.content.pokemon:patch("PORYGON",   { evolutions = { { method = "ITEM", item = "THUNDERSTONE",into = "PORYGON2" }, { method = "LEVEL", level = 40, into = "PORYGON2" } } })

---------------------------------------------------------
-- 2. GRASS & CAVE ENCOUNTERS (WALKING)
---------------------------------------------------------

mod.content.encounters:patch("ROUTE_31", {
    grass = {
        morn = { slots = {
            { level = 4, species = "LEDYBA" },
            { level = 4, species = "CATERPIE" },
            { level = 5, species = "BELLSPROUT" },
            { level = 5, species = "CHIKORITA" },
            { level = 4, species = "PIDGEY" },
            { level = 4, species = "HOPPIP" },
            { level = 5, species = "RATTATA" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_32", {
    grass = {
        morn = { slots = {
            { level = 6, species = "MAREEP" },
            { level = 6, species = "EKANS" },
            { level = 6, species = "BELLSPROUT" },
            { level = 6, species = "HOPPIP" },
            { level = 5, species = "ZUBAT" },
            { level = 5, species = "RATTATA" },
            { level = 6, species = "ZUBAT" }
        } },
        day = { slots = {
            { level = 6, species = "MAREEP" },
            { level = 6, species = "EKANS" },
            { level = 5, species = "TOTODILE" },
            { level = 6, species = "HOPPIP" },
            { level = 5, species = "ZUBAT" },
            { level = 5, species = "RATTATA" },
            { level = 6, species = "ZUBAT" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_36", {
    grass = {
        morn = { slots = {
            { level = 13, species = "VULPIX" },
            { level = 13, species = "LEDYBA" },
            { level = 14, species = "BELLSPROUT" },
            { level = 13, species = "GROWLITHE" },
            { level = 14, species = "PIDGEY" },
            { level = 14, species = "STANTLER" },
            { level = 13, species = "RATTATA" }
        } },
        day = { slots = {
            { level = 13, species = "VULPIX" },
            { level = 13, species = "PIDGEY" },
            { level = 14, species = "BELLSPROUT" },
            { level = 13, species = "GROWLITHE" },
            { level = 14, species = "PIDGEY" },
            { level = 14, species = "STANTLER" },
            { level = 13, species = "RATTATA" }
        } },
        nite = { slots = {
            { level = 13, species = "HOUNDOUR" },
            { level = 13, species = "HOOTHOOT" },
            { level = 14, species = "BELLSPROUT" },
            { level = 13, species = "GROWLITHE" },
            { level = 14, species = "HOOTHOOT" },
            { level = 14, species = "STANTLER" },
            { level = 13, species = "RATTATA" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_37", {
    grass = {
        morn = { slots = {
            { level = 15, species = "VULPIX" },
            { level = 15, species = "LEDYBA" },
            { level = 16, species = "GROWLITHE" },
            { level = 15, species = "PIDGEY" },
            { level = 16, species = "PIDGEOTTO" },
            { level = 16, species = "GROWLITHE" },
            { level = 15, species = "LEDYBA" }
        } },
        day = { slots = {
            { level = 15, species = "VULPIX" },
            { level = 15, species = "PIDGEY" },
            { level = 16, species = "GROWLITHE" },
            { level = 15, species = "PIDGEY" },
            { level = 16, species = "PIDGEOTTO" },
            { level = 16, species = "GROWLITHE" },
            { level = 15, species = "PIDGEY" }
        } },
        nite = { slots = {
            { level = 15, species = "HOUNDOUR" },
            { level = 15, species = "SPINARAK" },
            { level = 16, species = "STANTLER" },
            { level = 15, species = "HOOTHOOT" },
            { level = 16, species = "NOCTOWL" },
            { level = 16, species = "STANTLER" },
            { level = 15, species = "SPINARAK" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_38", {
    grass = {
        nite = { slots = {
            { level = 16, species = "MURKROW" },
            { level = 16, species = "MEOWTH" },
            { level = 17, species = "MAGNEMITE" },
            { level = 16, species = "RATTATA" },
            { level = 17, species = "RATICATE" },
            { level = 17, species = "MEOWTH" },
            { level = 16, species = "MAGNEMITE" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_42", {
    grass = {
        morn = { slots = {
            { level = 15, species = "MANKEY" },
            { level = 15, species = "EKANS" },
            { level = 16, species = "SPEAROW" },
            { level = 15, species = "ARBOK" },
            { level = 16, species = "FEAROW" },
            { level = 16, species = "ARBOK" },
            { level = 15, species = "GOLBAT" }
        } },
        day = { slots = {
            { level = 15, species = "MANKEY" },
            { level = 15, species = "EKANS" },
            { level = 16, species = "SPEAROW" },
            { level = 15, species = "ARBOK" },
            { level = 16, species = "FEAROW" },
            { level = 16, species = "ARBOK" },
            { level = 15, species = "GOLBAT" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_9", {
    grass = {
        morn = { slots = {
            { level = 15, species = "MANKEY" },
            { level = 15, species = "RATTATA" },
            { level = 16, species = "SPEAROW" },
            { level = 15, species = "RATICATE" },
            { level = 16, species = "FEAROW" },
            { level = 16, species = "MAROWAK" },
            { level = 15, species = "RATICATE" }
        } },
        day = { slots = {
            { level = 15, species = "MANKEY" },
            { level = 15, species = "RATTATA" },
            { level = 16, species = "SPEAROW" },
            { level = 15, species = "RATICATE" },
            { level = 16, species = "FEAROW" },
            { level = 16, species = "MAROWAK" },
            { level = 15, species = "RATICATE" }
        } }
    }
})

mod.content.encounters:patch("ROUTE_43", {
    grass = {
        morn = { slots = {
            { level = 15, species = "GIRAFARIG" },
            { level = 15, species = "PIDGEOTTO" },
            { level = 16, species = "FLAAFFY" },
            { level = 15, species = "FARFETCH_D" },
            { level = 16, species = "FLAAFFY" },
            { level = 16, species = "PIDGEOTTO" },
            { level = 15, species = "PIDGEOTTO" }
        } },
        day = { slots = {
            { level = 15, species = "GIRAFARIG" },
            { level = 15, species = "PIDGEOTTO" },
            { level = 16, species = "FLAAFFY" },
            { level = 15, species = "FARFETCH_D" },
            { level = 16, species = "FLAAFFY" },
            { level = 16, species = "PIDGEOTTO" },
            { level = 15, species = "PIDGEOTTO" }
        } },
        nite = { slots = {
            { level = 15, species = "GIRAFARIG" },
            { level = 15, species = "VENONAT" },
            { level = 16, species = "NOCTOWL" },
            { level = 15, species = "FLAAFFY" },
            { level = 16, species = "VENOMOTH" },
            { level = 16, species = "NOCTOWL" },
            { level = 15, species = "VENOMOTH" }
        } }
    }
})

mod.content.encounters:patch("DARK_CAVE_VIOLET_ENTRANCE", {
    grass = {
        nite = { slots = {
            { level = 4, species = "CYNDAQUIL" },
            { level = 4, species = "GEODUDE" },
            { level = 5, species = "ZUBAT" },
            { level = 4, species = "CYNDAQUIL" },
            { level = 5, species = "GEODUDE" },
            { level = 5, species = "ZUBAT" },
            { level = 4, species = "DUNSPARCE" }
        } }
    }
})

mod.content.encounters:patch("ILEX_FOREST", {
    grass = {
        morn = { slots = {
            { level = 6, species = "CATERPIE" },
            { level = 6, species = "WEEDLE" },
            { level = 7, species = "METAPOD" },
            { level = 7, species = "KAKUNA" },
            { level = 6, species = "BULBASAUR" },
            { level = 6, species = "PIDGEY" },
            { level = 6, species = "ZUBAT" }
        } }
    }
})

mod.content.encounters:patch("BURNED_TOWER_B1F", {
    grass = {
        day = { slots = {
            { level = 15, species = "SLUGMA" },
            { level = 15, species = "KOFFING" },
            { level = 16, species = "KOFFING" },
            { level = 15, species = "ZUBAT" },
            { level = 16, species = "ZUBAT" },
            { level = 16, species = "RATTATA" },
            { level = 15, species = "RATICATE" }
        } },
        nite = { slots = {
            { level = 15, species = "KOFFING" },
            { level = 15, species = "KOFFING" },
            { level = 16, species = "ZUBAT" },
            { level = 15, species = "CHARMANDER" },
            { level = 16, species = "ZUBAT" },
            { level = 16, species = "RATTATA" },
            { level = 15, species = "RATICATE" }
        } }
    }
})

mod.content.encounters:patch("TIN_TOWER_2F", {
    grass = {
        day = { slots = {
            { level = 20, species = "RATTATA" },
            { level = 20, species = "NATU" },
            { level = 21, species = "XATU" },
            { level = 20, species = "RATTATA" },
            { level = 21, species = "RATICATE" },
            { level = 21, species = "RATICATE" },
            { level = 20, species = "RATICATE" }
        } },
        nite = { slots = {
            { level = 20, species = "GASTLY" },
            { level = 20, species = "RATTATA" },
            { level = 21, species = "XATU" },
            { level = 20, species = "GASTLY" },
            { level = 21, species = "RATICATE" },
            { level = 21, species = "RATICATE" },
            { level = 20, species = "RATICATE" }
        } }
    }
})

mod.content.encounters:patch("UNION_CAVE_B1F", {
    grass = {
        morn = { slots = {
            { level = 8, species = "ZUBAT" },
            { level = 8, species = "GOLBAT" },
            { level = 9, species = "ZUBAT" },
            { level = 8, species = "SQUIRTLE" },
            { level = 9, species = "GEODUDE" },
            { level = 9, species = "ONIX" },
            { level = 8, species = "ONIX" }
        } },
        day = { slots = {
            { level = 8, species = "ZUBAT" },
            { level = 8, species = "GOLBAT" },
            { level = 9, species = "ZUBAT" },
            { level = 8, species = "SQUIRTLE" },
            { level = 9, species = "GEODUDE" },
            { level = 9, species = "ONIX" },
            { level = 8, species = "ONIX" }
        } }
    },
    water = {
        slots = {
            { level = 10, species = "ZUBAT" },
            { level = 15, species = "SQUIRTLE" },
            { level = 20, species = "SQUIRTLE" }
        }
    }
})

mod.content.encounters:patch("WHIRL_ISLAND_LUGIA_CHAMBER", {
    grass = {
        morn = { slots = {
            { level = 22, species = "KRABBY" },
            { level = 22, species = "ZUBAT" },
            { level = 23, species = "KINGLER" },
            { level = 22, species = "GOLBAT" },
            { level = 23, species = "OMANYTE" },
            { level = 23, species = "GOLBAT" },
            { level = 22, species = "SEEL" }
        } },
        day = { slots = {
            { level = 22, species = "KRABBY" },
            { level = 22, species = "ZUBAT" },
            { level = 23, species = "KINGLER" },
            { level = 22, species = "GOLBAT" },
            { level = 23, species = "OMANYTE" },
            { level = 23, species = "GOLBAT" },
            { level = 22, species = "SEEL" }
        } },
        nite = { slots = {
            { level = 22, species = "KRABBY" },
            { level = 22, species = "ZUBAT" },
            { level = 23, species = "KINGLER" },
            { level = 22, species = "KABUTO" },
            { level = 23, species = "SEEL" },
            { level = 23, species = "GOLBAT" },
            { level = 22, species = "SEEL" }
        } }
    }
})

-- LENDÁRIOS (1%)
mod.content.encounters:patch("ROUTE_10_NORTH", {
    grass = {
        day = { slots = {
            { level = 15, species = "VOLTORB" },
            { level = 15, species = "MAGNEMITE" },
            { level = 16, species = "RATICATE" },
            { level = 15, species = "MAGNETON" },
            { level = 16, species = "ELECTABUZZ" },
            { level = 16, species = "ELECTABUZZ" },
            { level = 40, species = "ZAPDOS" }
        } }
    }
})

mod.content.encounters:patch("SILVER_CAVE_ROOM_2", {
    grass = {
        morn = { slots = {
            { level = 45, species = "GOLBAT" },
            { level = 45, species = "MACHOKE" },
            { level = 46, species = "URSARING" },
            { level = 45, species = "PARASECT" },
            { level = 46, species = "PARASECT" },
            { level = 46, species = "MISDREAVUS" },
            { level = 50, species = "MOLTRES" }
        } }
    }
})

mod.content.encounters:patch("ICE_PATH_B3F", {
    grass = {
        nite = { slots = {
            { level = 22, species = "ZUBAT" },
            { level = 22, species = "JYNX" },
            { level = 23, species = "GOLBAT" },
            { level = 22, species = "SWINUB" },
            { level = 23, species = "DELIBIRD" },
            { level = 23, species = "SNEASEL" },
            { level = 40, species = "ARTICUNO" }
        } }
    }
})

mod.content.encounters:patch("SEAFOAM_GYM", {
    grass = {
        nite = { slots = {
            { level = 45, species = "ZUBAT" },
            { level = 45, species = "GOLBAT" },
            { level = 46, species = "KRABBY" },
            { level = 45, species = "KINGLER" },
            { level = 46, species = "GOLDUCK" },
            { level = 46, species = "GOLBAT" },
            { level = 60, species = "MEWTWO" }
        } }
    }
})

mod.content.encounters:patch("SILVER_CAVE_ROOM_3", {
    grass = {
        morn = { slots = {
            { level = 45, species = "GOLBAT" },
            { level = 45, species = "ONIX" },
            { level = 46, species = "GRAVELER" },
            { level = 45, species = "URSARING" },
            { level = 46, species = "DONPHAN" },
            { level = 46, species = "LARVITAR" },
            { level = 50, species = "MEW" }
        } }
    }
})

---------------------------------------------------------
-- 3. WATER ENCOUNTERS (SURFING)
---------------------------------------------------------
mod.content.encounters:patch("ROUTE_41", {
    water = {
        slots = {
            { level = 20, species = "TENTACOOL" },
            { level = 20, species = "REMORAID" },
            { level = 20, species = "MANTINE" }
        }
    }
})
