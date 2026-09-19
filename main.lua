return function(mod)
    mod.log:info("Loading All Pokemon Catchable 251 for Crystal...")

    ---------------------------------------------------------
    -- 1. STONE EVOLUTIONS
    ---------------------------------------------------------
    -- Replaces trade evolutions with evolutionary stones
    mod.content.pokemon:patch("HAUNTER",   { evolutions = { { method = "ITEM", item = "MOON_STONE",    into = "GENGAR" } } })
    mod.content.pokemon:patch("KADABRA",   { evolutions = { { method = "ITEM", item = "MOON_STONE",    into = "ALAKAZAM" } } })
    mod.content.pokemon:patch("MACHOKE",   { evolutions = { { method = "ITEM", item = "SUN_STONE",     into = "MACHAMP" } } })
    mod.content.pokemon:patch("GRAVELER",  { evolutions = { { method = "ITEM", item = "SUN_STONE",     into = "GOLEM" } } })
    mod.content.pokemon:patch("POLIWHIRL", { evolutions = { { method = "ITEM", item = "MOON_STONE",    into = "POLITOED" } } })
    mod.content.pokemon:patch("SLOWPOKE",  { evolutions = { { method = "ITEM", item = "WATER_STONE",   into = "SLOWKING" } } })
    mod.content.pokemon:patch("ONIX",      { evolutions = { { method = "ITEM", item = "SUN_STONE",     into = "STEELIX" } } })
    mod.content.pokemon:patch("SCYTHER",   { evolutions = { { method = "ITEM", item = "LEAF_STONE",    into = "SCIZOR" } } })
    mod.content.pokemon:patch("SEADRA",    { evolutions = { { method = "ITEM", item = "WATER_STONE",   into = "KINGDRA" } } })
    mod.content.pokemon:patch("PORYGON",   { evolutions = { { method = "ITEM", item = "THUNDERSTONE",  into = "PORYGON2" } } })

    ---------------------------------------------------------
    -- 2. GRASS & CAVE ENCOUNTERS (WALKING)
    ---------------------------------------------------------
    -- Gen 2 uses exactly 7 slots per time of day (30%, 30%, 20%, 10%, 5%, 4%, 1%)
    
    mod.content.encounters:patch("ROUTE_31", {
        grass = {
            morn = {
                { level = 4, species = "LEDYBA" },     -- 30%
                { level = 4, species = "CATERPIE" },   -- 30%
                { level = 5, species = "BELLSPROUT" }, -- 20%
                { level = 5, species = "CHIKORITA" },  -- 10%
                { level = 4, species = "PIDGEY" },     -- 5%
                { level = 4, species = "HOPPIP" },     -- 4%
                { level = 5, species = "RATTATA" }     -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_32", {
        grass = {
            morn = {
                { level = 6, species = "MAREEP" },     -- 30%
                { level = 6, species = "EKANS" },      -- 30%
                { level = 6, species = "BELLSPROUT" }, -- 20%
                { level = 6, species = "HOPPIP" },     -- 10%
                { level = 5, species = "ZUBAT" },      -- 5%
                { level = 5, species = "RATTATA" },    -- 4%
                { level = 6, species = "ZUBAT" }       -- 1%
            },
            day = {
                { level = 6, species = "MAREEP" },     -- 30%
                { level = 6, species = "EKANS" },      -- 30%
                { level = 5, species = "TOTODILE" },   -- 20%
                { level = 6, species = "HOPPIP" },     -- 10%
                { level = 5, species = "ZUBAT" },      -- 5%
                { level = 5, species = "RATTATA" },    -- 4%
                { level = 6, species = "ZUBAT" }       -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_36", {
        grass = {
            morn = {
                { level = 13, species = "VULPIX" },    -- 30%
                { level = 13, species = "LEDYBA" },    -- 30%
                { level = 14, species = "BELLSPROUT" },-- 20%
                { level = 13, species = "GROWLITHE" }, -- 10%
                { level = 14, species = "PIDGEY" },    -- 5%
                { level = 14, species = "STANTLER" },  -- 4%
                { level = 13, species = "RATTATA" }    -- 1%
            },
            day = {
                { level = 13, species = "VULPIX" },    -- 30%
                { level = 13, species = "PIDGEY" },    -- 30%
                { level = 14, species = "BELLSPROUT" },-- 20%
                { level = 13, species = "GROWLITHE" }, -- 10%
                { level = 14, species = "PIDGEY" },    -- 5%
                { level = 14, species = "STANTLER" },  -- 4%
                { level = 13, species = "RATTATA" }    -- 1%
            },
            nite = {
                { level = 13, species = "HOUNDOUR" },  -- 30%
                { level = 13, species = "HOOTHOOT" },  -- 30%
                { level = 14, species = "BELLSPROUT" },-- 20%
                { level = 13, species = "GROWLITHE" }, -- 10%
                { level = 14, species = "HOOTHOOT" },  -- 5%
                { level = 14, species = "STANTLER" },  -- 4%
                { level = 13, species = "RATTATA" }    -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_37", {
        grass = {
            morn = {
                { level = 15, species = "VULPIX" },    -- 30%
                { level = 15, species = "LEDYBA" },    -- 30%
                { level = 16, species = "GROWLITHE" }, -- 20%
                { level = 15, species = "PIDGEY" },    -- 10%
                { level = 16, species = "PIDGEOTTO" }, -- 5%
                { level = 16, species = "GROWLITHE" }, -- 4%
                { level = 15, species = "LEDYBA" }     -- 1%
            },
            day = {
                { level = 15, species = "VULPIX" },    -- 30%
                { level = 15, species = "PIDGEY" },    -- 30%
                { level = 16, species = "GROWLITHE" }, -- 20%
                { level = 15, species = "PIDGEY" },    -- 10%
                { level = 16, species = "PIDGEOTTO" }, -- 5%
                { level = 16, species = "GROWLITHE" }, -- 4%
                { level = 15, species = "PIDGEY" }     -- 1%
            },
            nite = {
                { level = 15, species = "HOUNDOUR" },  -- 30%
                { level = 15, species = "SPINARAK" },  -- 30%
                { level = 16, species = "STANTLER" },  -- 20%
                { level = 15, species = "HOOTHOOT" },  -- 10%
                { level = 16, species = "NOCTOWL" },   -- 5%
                { level = 16, species = "STANTLER" },  -- 4%
                { level = 15, species = "SPINARAK" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_38", {
        grass = {
            nite = {
                { level = 16, species = "MURKROW" },   -- 30%
                { level = 16, species = "MEOWTH" },    -- 30%
                { level = 17, species = "MAGNEMITE" }, -- 20%
                { level = 16, species = "RATTATA" },   -- 10%
                { level = 17, species = "RATICATE" },  -- 5%
                { level = 17, species = "MEOWTH" },    -- 4%
                { level = 16, species = "MAGNEMITE" }  -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_42", {
        grass = {
            morn = {
                { level = 15, species = "MANKEY" },    -- 30%
                { level = 15, species = "EKANS" },     -- 30%
                { level = 16, species = "SPEAROW" },   -- 20%
                { level = 15, species = "ARBOK" },     -- 10%
                { level = 16, species = "FEAROW" },    -- 5%
                { level = 16, species = "ARBOK" },     -- 4%
                { level = 15, species = "GOLBAT" }     -- 1%
            },
            day = {
                { level = 15, species = "MANKEY" },    -- 30%
                { level = 15, species = "EKANS" },     -- 30%
                { level = 16, species = "SPEAROW" },   -- 20%
                { level = 15, species = "ARBOK" },     -- 10%
                { level = 16, species = "FEAROW" },    -- 5%
                { level = 16, species = "ARBOK" },     -- 4%
                { level = 15, species = "GOLBAT" }     -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_9", {
        grass = {
            morn = {
                { level = 15, species = "MANKEY" },    -- 30%
                { level = 15, species = "RATTATA" },   -- 30%
                { level = 16, species = "SPEAROW" },   -- 20%
                { level = 15, species = "RATICATE" },  -- 10%
                { level = 16, species = "FEAROW" },    -- 5%
                { level = 16, species = "MAROWAK" },   -- 4%
                { level = 15, species = "RATICATE" }   -- 1%
            },
            day = {
                { level = 15, species = "MANKEY" },    -- 30%
                { level = 15, species = "RATTATA" },   -- 30%
                { level = 16, species = "SPEAROW" },   -- 20%
                { level = 15, species = "RATICATE" },  -- 10%
                { level = 16, species = "FEAROW" },    -- 5%
                { level = 16, species = "MAROWAK" },   -- 4%
                { level = 15, species = "RATICATE" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("ROUTE_43", {
        grass = {
            morn = {
                { level = 15, species = "GIRAFARIG" }, -- 30%
                { level = 15, species = "PIDGEOTTO" }, -- 30%
                { level = 16, species = "FLAAFFY" },   -- 20%
                { level = 15, species = "FARFETCH_D" },-- 10%
                { level = 16, species = "FLAAFFY" },   -- 5%
                { level = 16, species = "PIDGEOTTO" }, -- 4%
                { level = 15, species = "PIDGEOTTO" }  -- 1%
            },
            day = {
                { level = 15, species = "GIRAFARIG" }, -- 30%
                { level = 15, species = "PIDGEOTTO" }, -- 30%
                { level = 16, species = "FLAAFFY" },   -- 20%
                { level = 15, species = "FARFETCH_D" },-- 10%
                { level = 16, species = "FLAAFFY" },   -- 5%
                { level = 16, species = "PIDGEOTTO" }, -- 4%
                { level = 15, species = "PIDGEOTTO" }  -- 1%
            },
            nite = {
                { level = 15, species = "GIRAFARIG" }, -- 30%
                { level = 15, species = "VENONAT" },   -- 30%
                { level = 16, species = "NOCTOWL" },   -- 20%
                { level = 15, species = "FLAAFFY" },   -- 10%
                { level = 16, species = "VENOMOTH" },  -- 5%
                { level = 16, species = "NOCTOWL" },   -- 4%
                { level = 15, species = "VENOMOTH" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("DARK_CAVE_VIOLET_ENTRANCE", {
        grass = {
            nite = {
                { level = 4, species = "CYNDAQUIL" },  -- 30%
                { level = 4, species = "GEODUDE" },    -- 30%
                { level = 5, species = "ZUBAT" },      -- 20%
                { level = 4, species = "CYNDAQUIL" },  -- 10% (Makes 40% total)
                { level = 5, species = "GEODUDE" },    -- 5%
                { level = 5, species = "ZUBAT" },      -- 4%
                { level = 4, species = "DUNSPARCE" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("ILEX_FOREST", {
        grass = {
            morn = {
                { level = 6, species = "CATERPIE" },   -- 30%
                { level = 6, species = "WEEDLE" },     -- 30%
                { level = 7, species = "METAPOD" },    -- 20%
                { level = 7, species = "KAKUNA" },     -- 10%
                { level = 6, species = "BULBASAUR" },  -- 5%
                { level = 6, species = "PIDGEY" },     -- 4%
                { level = 6, species = "ZUBAT" }       -- 1%
            }
        }
    })

    mod.content.encounters:patch("BURNED_TOWER_B1F", {
        grass = {
            day = {
                { level = 15, species = "SLUGMA" },    -- 30%
                { level = 15, species = "KOFFING" },   -- 30%
                { level = 16, species = "KOFFING" },   -- 20%
                { level = 15, species = "ZUBAT" },     -- 10%
                { level = 16, species = "ZUBAT" },     -- 5%
                { level = 16, species = "RATTATA" },   -- 4%
                { level = 15, species = "RATICATE" }   -- 1%
            },
            nite = {
                { level = 15, species = "KOFFING" },   -- 30%
                { level = 15, species = "KOFFING" },   -- 30%
                { level = 16, species = "ZUBAT" },     -- 20%
                { level = 15, species = "CHARMANDER" },-- 10%
                { level = 16, species = "ZUBAT" },     -- 5%
                { level = 16, species = "RATTATA" },   -- 4%
                { level = 15, species = "RATICATE" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("TIN_TOWER_2F", {
        grass = {
            day = {
                { level = 20, species = "RATTATA" },   -- 30%
                { level = 20, species = "NATU" },      -- 30%
                { level = 21, species = "XATU" },      -- 20%
                { level = 20, species = "RATTATA" },   -- 10%
                { level = 21, species = "RATICATE" },  -- 5%
                { level = 21, species = "RATICATE" },  -- 4%
                { level = 20, species = "RATICATE" }   -- 1%
            },
            nite = {
                { level = 20, species = "GASTLY" },    -- 30%
                { level = 20, species = "RATTATA" },   -- 30%
                { level = 21, species = "XATU" },      -- 20%
                { level = 20, species = "GASTLY" },    -- 10%
                { level = 21, species = "RATICATE" },  -- 5%
                { level = 21, species = "RATICATE" },  -- 4%
                { level = 20, species = "RATICATE" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("UNION_CAVE_B1F", {
        grass = {
            morn = {
                { level = 8, species = "ZUBAT" },      -- 30%
                { level = 8, species = "GOLBAT" },     -- 30%
                { level = 9, species = "ZUBAT" },      -- 20%
                { level = 8, species = "SQUIRTLE" },   -- 10%
                { level = 9, species = "GEODUDE" },    -- 5%
                { level = 9, species = "ONIX" },       -- 4%
                { level = 8, species = "ONIX" }        -- 1%
            },
            day = {
                { level = 8, species = "ZUBAT" },      -- 30%
                { level = 8, species = "GOLBAT" },     -- 30%
                { level = 9, species = "ZUBAT" },      -- 20%
                { level = 8, species = "SQUIRTLE" },   -- 10%
                { level = 9, species = "GEODUDE" },    -- 5%
                { level = 9, species = "ONIX" },       -- 4%
                { level = 8, species = "ONIX" }        -- 1%
            }
        },
        water = {
            slots = {
                { level = 10, species = "ZUBAT" },     -- 60%
                { level = 15, species = "SQUIRTLE" },  -- 30%
                { level = 20, species = "SQUIRTLE" }   -- 10%
            }
        }
    })

    mod.content.encounters:patch("WHIRL_ISLAND_LUGIA_CHAMBER", {
        grass = {
            morn = {
                { level = 22, species = "KRABBY" },    -- 30%
                { level = 22, species = "ZUBAT" },     -- 30%
                { level = 23, species = "KINGLER" },   -- 20%
                { level = 22, species = "GOLBAT" },    -- 10%
                { level = 23, species = "OMANYTE" },   -- 5%
                { level = 23, species = "GOLBAT" },    -- 4%
                { level = 22, species = "SEEL" }       -- 1%
            },
            day = {
                { level = 22, species = "KRABBY" },    -- 30%
                { level = 22, species = "ZUBAT" },     -- 30%
                { level = 23, species = "KINGLER" },   -- 20%
                { level = 22, species = "GOLBAT" },    -- 10%
                { level = 23, species = "OMANYTE" },   -- 5%
                { level = 23, species = "GOLBAT" },    -- 4%
                { level = 22, species = "SEEL" }       -- 1%
            },
            nite = {
                { level = 22, species = "KRABBY" },    -- 30%
                { level = 22, species = "ZUBAT" },     -- 30%
                { level = 23, species = "KINGLER" },   -- 20%
                { level = 22, species = "KABUTO" },    -- 10%
                { level = 23, species = "SEEL" },      -- 5%
                { level = 23, species = "GOLBAT" },    -- 4%
                { level = 22, species = "SEEL" }       -- 1%
            }
        }
    })

    -- LENDÁRIOS (1%)
    mod.content.encounters:patch("ROUTE_10_NORTH", {
        grass = {
            day = {
                { level = 15, species = "VOLTORB" },   -- 30%
                { level = 15, species = "MAGNEMITE" }, -- 30%
                { level = 16, species = "RATICATE" },  -- 20%
                { level = 15, species = "MAGNETON" },  -- 10%
                { level = 16, species = "ELECTABUZZ" },-- 5%
                { level = 16, species = "ELECTABUZZ" },-- 4%
                { level = 40, species = "ZAPDOS" }     -- 1%
            }
        }
    })

    mod.content.encounters:patch("SILVER_CAVE_ROOM_2", {
        grass = {
            morn = {
                { level = 45, species = "GOLBAT" },    -- 30%
                { level = 45, species = "MACHOKE" },   -- 30%
                { level = 46, species = "URSARING" },  -- 20%
                { level = 45, species = "PARASECT" },  -- 10%
                { level = 46, species = "PARASECT" },  -- 5%
                { level = 46, species = "MISDREAVUS" },-- 4%
                { level = 50, species = "MOLTRES" }    -- 1%
            }
        }
    })

    mod.content.encounters:patch("ICE_PATH_B3F", {
        grass = {
            nite = {
                { level = 22, species = "ZUBAT" },     -- 30%
                { level = 22, species = "JYNX" },      -- 30%
                { level = 23, species = "GOLBAT" },    -- 20%
                { level = 22, species = "SWINUB" },    -- 10%
                { level = 23, species = "DELIBIRD" },  -- 5%
                { level = 23, species = "SNEASEL" },   -- 4%
                { level = 40, species = "ARTICUNO" }   -- 1%
            }
        }
    })

    mod.content.encounters:patch("SEAFOAM_GYM", {
        grass = {
            nite = {
                { level = 45, species = "ZUBAT" },     -- 30%
                { level = 45, species = "GOLBAT" },    -- 30%
                { level = 46, species = "KRABBY" },    -- 20%
                { level = 45, species = "KINGLER" },   -- 10%
                { level = 46, species = "GOLDUCK" },   -- 5%
                { level = 46, species = "GOLBAT" },    -- 4%
                { level = 60, species = "MEWTWO" }     -- 1%
            }
        }
    })

    mod.content.encounters:patch("SILVER_CAVE_ROOM_3", {
        grass = {
            morn = {
                { level = 45, species = "GOLBAT" },    -- 30%
                { level = 45, species = "ONIX" },      -- 30%
                { level = 46, species = "GRAVELER" },  -- 20%
                { level = 45, species = "URSARING" },  -- 10%
                { level = 46, species = "DONPHAN" },   -- 5%
                { level = 46, species = "LARVITAR" },  -- 4%
                { level = 50, species = "MEW" }        -- 1%
            }
        }
    })

    ---------------------------------------------------------
    -- 3. WATER ENCOUNTERS (SURFING)
    ---------------------------------------------------------
    -- Gen 2 uses exactly 3 slots for water encounters (60%, 30%, 10%)
    mod.content.encounters:patch("ROUTE_41", {
        water = {
            slots = {
                { level = 20, species = "TENTACOOL" }, -- 60%
                { level = 20, species = "REMORAID" },  -- 30%
                { level = 20, species = "MANTINE" }    -- 10%
            }
        }
    })

end
