return function(mod)
    mod.log:info("Loading All Pokemon Catchable 251 (Crystal) - Untamed Tohjo Sync...")

    ---------------------------------------------------------
    -- 1. TRADE EVOLUTIONS (Pedras em vez de Troca)
    ---------------------------------------------------------
    mod.content.pokemon:patch("HAUNTER",   { evolutions = { { method = "EVOLVE_ITEM", item = "MOON_STONE",  into = "GENGAR" } } })
    mod.content.pokemon:patch("KADABRA",   { evolutions = { { method = "EVOLVE_ITEM", item = "MOON_STONE",  into = "ALAKAZAM" } } })
    mod.content.pokemon:patch("POLIWHIRL", { evolutions = { { method = "EVOLVE_ITEM", item = "MOON_STONE",  into = "POLITOED" } } })
    mod.content.pokemon:patch("MACHOKE",   { evolutions = { { method = "EVOLVE_ITEM", item = "SUN_STONE",   into = "MACHAMP" } } })
    mod.content.pokemon:patch("GRAVELER",  { evolutions = { { method = "EVOLVE_ITEM", item = "SUN_STONE",   into = "GOLEM" } } })
    mod.content.pokemon:patch("ONIX",      { evolutions = { { method = "EVOLVE_ITEM", item = "SUN_STONE",   into = "STEELIX" } } })
    mod.content.pokemon:patch("SCYTHER",   { evolutions = { { method = "EVOLVE_ITEM", item = "LEAF_STONE",  into = "SCIZOR" } } })
    mod.content.pokemon:patch("SEADRA",    { evolutions = { { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "KINGDRA" } } })
    mod.content.pokemon:patch("SLOWPOKE",  { evolutions = { { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "SLOWKING" } } })
    mod.content.pokemon:patch("PORYGON",   { evolutions = { { method = "EVOLVE_ITEM", item = "THUNDERSTONE",into = "PORYGON2" } } })

    ---------------------------------------------------------
    -- 2. BANCO DE DADOS DOS MATINHOS (O Array Esparso)
    ---------------------------------------------------------
    local matinhos = {
        
        -- STARTERS E FÓSSEIS
        ROUTE_31 = { grass = { morn = { [4] = { level = 5, species = "CHIKORITA" } } } },
        DARK_CAVE_VIOLET_ENTRANCE = {
            grass = { nite = { [1] = { level = 5, species = "CYNDAQUIL" }, [4] = { level = 5, species = "CYNDAQUIL" } } }
        },
        ROUTE_32 = {
            grass = { 
                day = { [3] = { level = 5, species = "TOTODILE" } },
                morn = { [1] = { level = 6, species = "MAREEP" } }
            }
        },
        ILEX_FOREST = { grass = { morn = { [5] = { level = 6, species = "BULBASAUR" } } } },
        BURNED_TOWER_B1F = {
            grass = { 
                nite = { [4] = { level = 14, species = "CHARMANDER" } },
                day = { [1] = { level = 14, species = "SLUGMA" } }
            }
        },
        UNION_CAVE_B1F = {
            grass = { 
                morn = { [4] = { level = 20, species = "SQUIRTLE" } },
                day = { [4] = { level = 20, species = "SQUIRTLE" } } 
            },
            water = {
                morn = { [2] = { level = 20, species = "SQUIRTLE" }, [3] = { level = 20, species = "SQUIRTLE" } },
                day =  { [2] = { level = 20, species = "SQUIRTLE" }, [3] = { level = 20, species = "SQUIRTLE" } },
                nite = { [2] = { level = 20, species = "SQUIRTLE" }, [3] = { level = 20, species = "SQUIRTLE" } }
            }
        },
        WHIRL_ISLAND_LUGIA_CHAMBER = {
            grass = {
                morn = { [5] = { level = 25, species = "OMANYTE" } },
                day =  { [5] = { level = 25, species = "OMANYTE" } },
                nite = { [4] = { level = 25, species = "KABUTO" } }
            }
        },

        -- ENCONTROS GERAIS EXCLUSIVOS
        ROUTE_36 = {
            grass = {
                morn = { [1] = { level = 13, species = "VULPIX" } },
                day =  { [1] = { level = 13, species = "VULPIX" } },
                nite = { [1] = { level = 13, species = "HOUNDOUR" } }
            }
        },
        ROUTE_37 = {
            grass = {
                morn = { [1] = { level = 14, species = "VULPIX" } },
                day =  { [1] = { level = 14, species = "VULPIX" } },
                nite = { [1] = { level = 14, species = "HOUNDOUR" } }
            }
        },
        ROUTE_42 = {
            grass = {
                morn = { [1] = { level = 15, species = "MANKEY" } },
                day =  { [1] = { level = 15, species = "MANKEY" } }
            }
        },
        ROUTE_9 = {
            grass = {
                morn = { [1] = { level = 15, species = "MANKEY" } },
                day =  { [1] = { level = 15, species = "MANKEY" } }
            }
        },
        ROUTE_43 = {
            grass = {
                morn = { [1] = { level = 15, species = "GIRAFARIG" } },
                day =  { [1] = { level = 15, species = "GIRAFARIG" } },
                nite = { [1] = { level = 15, species = "GIRAFARIG" } }
            }
        },
        ROUTE_38 = { grass = { nite = { [1] = { level = 16, species = "MURKROW" } } } },
        TIN_TOWER_2F = {
            grass = {
                day =  { [1] = { level = 20, species = "NATU" }, [3] = { level = 22, species = "XATU" } },
                nite = { [3] = { level = 22, species = "XATU" } }
            }
        },
        ROUTE_41 = {
            water = {
                morn = { [2] = { level = 20, species = "REMORAID" } },
                day =  { [2] = { level = 20, species = "REMORAID" } },
                nite = { [2] = { level = 20, species = "REMORAID" } }
            }
        },

        -- LENDÁRIOS SECRETOS
        ICE_PATH_B3F = { grass = { nite = { [7] = { level = 50, species = "ARTICUNO" } } } },
        ROUTE_10_NORTH = { grass = { day = { [7] = { level = 50, species = "ZAPDOS" } } } },
        SILVER_CAVE_ROOM_2 = { grass = { morn = { [7] = { level = 50, species = "MOLTRES" } } } },
        SILVER_CAVE_ROOM_3 = {
            grass = {
                morn = { [7] = { level = 60, species = "MEW" } },
                day = { [7] = { level = 60, species = "MEW" } },
                nite = { [7] = { level = 70, species = "MEWTWO" } }
            }
        }
    }

    ---------------------------------------------------------
    -- 3. INTEGRAÇÃO COMPLETA NATIVA (Compatível com Untamed Tohjo)
    ---------------------------------------------------------
    
    -- A) Injeta as nossas modificações cirurgicamente na memória base do jogo
    mod.events:on("game.ready", function(ev)
        local game = ev and ev.game or mod.game
        if not game or not game.data then return end

        local gen2 = game.data.gen2Encounters or game.data.encounters
        if not gen2 then return end

        for mapId, terrains in pairs(matinhos) do
            for terrain, tods in pairs(terrains) do
                local mapEnc = gen2[terrain] and gen2[terrain][mapId]
                if mapEnc and type(mapEnc.slots) == "table" then
                    for tod, slots in pairs(tods) do
                        local targetSlots = (terrain == "water") and mapEnc.slots or mapEnc.slots[tod]
                        if type(targetSlots) == "table" then
                            for slot_idx, novo_bicho in pairs(slots) do
                                -- Altera apenas o slot específico, mantendo o resto da tabela Vanilla intacta!
                                -- Isso resolve o problema de leitura (ipairs) do Untamed Tohjo.
                                if targetSlots[slot_idx] then
                                    targetSlots[slot_idx].species = novo_bicho.species
                                    targetSlots[slot_idx].level = novo_bicho.level
                                else
                                    targetSlots[slot_idx] = {
                                        species = novo_bicho.species,
                                        level = novo_bicho.level
                                    }
                                end
                            end
                        end
                    end
                end
            end
        end
    end)

    -- B) Hook de encontros padrão (Evita sobrescrever batalhas de toque do Untamed Tohjo)
    mod.hooks:wrap("encounter.species", function(nextFn, enc, ctx)
        enc = nextFn(enc, ctx)
        if not enc or not enc.species then return enc end

        -- TRAVA DE SEGURANÇA: Se não há slot rolado, é uma batalha forçada do overworld!
        if not enc.slot then return enc end

        local mapId = tostring(ctx and ctx.mapId or "")
        local terrain = tostring(ctx and ctx.terrain or "grass")
        local tod = tostring(ctx and (ctx.daytime or ctx.tod) or "DAY"):lower()
        
        if tod == "dark" then tod = "nite" end
        if tod == "morning" then tod = "morn" end

        if matinhos[mapId] and matinhos[mapId][terrain] and matinhos[mapId][terrain][tod] then
            local tabela_atual = matinhos[mapId][terrain][tod]
            local slot_index = tonumber(enc.slot)
            
            if slot_index then
                local novo_bicho = tabela_atual[slot_index]
                if novo_bicho then
                    enc.species = novo_bicho.species
                    enc.level = novo_bicho.level
                end
            end
        end

        return enc
    end)
end
