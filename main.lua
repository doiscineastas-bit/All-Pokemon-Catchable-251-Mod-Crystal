return function(mod)
    -- Assinatura do Diretor / Produtor Cultural
    mod.log:info("Loading All Pokemon Catchable 251 (Crystal) by celotooty...")

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
    -- Slots de Grama/Caverna (1 a 7): [1]=30%, [2]=30%, [3]=20%, [4]=10%, [5]=5%, [6]=4%, [7]=1%
    -- Slots de Água (1 a 3): [1]=60%, [2]=30%, [3]=10%
    -- Se o slot ficar vazio, a engine simplesmente envia o Pokémon Vanilla normal!
    
    local matinhos = {
        
        -- STARTERS E FÓSSEIS
        ROUTE_31 = {
            grass = { morn = { [4] = { level = 5, species = "CHIKORITA" } } }       -- 10%
        },
        DARK_CAVE_VIOLET_ENTRANCE = {
            grass = { nite = { [1] = { level = 5, species = "CYNDAQUIL" },          -- 30% + 10% = 40%
                               [4] = { level = 5, species = "CYNDAQUIL" } } }
        },
        ROUTE_32 = {
            grass = { 
                day = { [3] = { level = 5, species = "TOTODILE" } },                -- 20% Totodile
                morn = { [1] = { level = 6, species = "MAREEP" } }                  -- 30% Mareep (Geral)
            }
        },
        ILEX_FOREST = {
            grass = { morn = { [5] = { level = 6, species = "BULBASAUR" } } }       -- 5%
        },
        BURNED_TOWER_B1F = {
            grass = { 
                nite = { [4] = { level = 14, species = "CHARMANDER" } },            -- 10% Charmander
                day = { [1] = { level = 14, species = "SLUGMA" } }                  -- 30% Slugma (Geral)
            }
        },
        UNION_CAVE_B1F = {
            grass = { 
                morn = { [4] = { level = 20, species = "SQUIRTLE" } },              -- 10% Andando
                day = { [4] = { level = 20, species = "SQUIRTLE" } } 
            },
            water = {
                morn = { [2] = { level = 20, species = "SQUIRTLE" },                -- 30% + 10% = 40% Surf
                         [3] = { level = 20, species = "SQUIRTLE" } },
                day =  { [2] = { level = 20, species = "SQUIRTLE" }, 
                         [3] = { level = 20, species = "SQUIRTLE" } },
                nite = { [2] = { level = 20, species = "SQUIRTLE" }, 
                         [3] = { level = 20, species = "SQUIRTLE" } }
            }
        },
        WHIRL_ISLAND_LUGIA_CHAMBER = {
            grass = {
                morn = { [5] = { level = 25, species = "OMANYTE" } },               -- 5% Omanyte
                day =  { [5] = { level = 25, species = "OMANYTE" } },
                nite = { [4] = { level = 25, species = "KABUTO" } }                 -- 10% Kabuto
            }
        },

        -- ENCONTROS GERAIS EXCLUSIVOS
        ROUTE_36 = {
            grass = {
                morn = { [1] = { level = 13, species = "VULPIX" } },                -- 30%
                day =  { [1] = { level = 13, species = "VULPIX" } },
                nite = { [1] = { level = 13, species = "HOUNDOUR" } }               -- 30%
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
                morn = { [1] = { level = 15, species = "MANKEY" } },                -- 30%
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
                morn = { [1] = { level = 15, species = "GIRAFARIG" } },             -- 30% (Qualquer horário)
                day =  { [1] = { level = 15, species = "GIRAFARIG" } },
                nite = { [1] = { level = 15, species = "GIRAFARIG" } }
            }
        },
        ROUTE_38 = {
            grass = { nite = { [1] = { level = 16, species = "MURKROW" } } }        -- 30%
        },
        TIN_TOWER_2F = {
            grass = {
                day =  { [1] = { level = 20, species = "NATU" },                    -- 30% Natu
                         [3] = { level = 22, species = "XATU" } },                  -- 20% Xatu
                nite = { [3] = { level = 22, species = "XATU" } }
            }
        },
        ROUTE_41 = {
            water = {
                morn = { [2] = { level = 20, species = "REMORAID" } },              -- 30% Surf
                day =  { [2] = { level = 20, species = "REMORAID" } },
                nite = { [2] = { level = 20, species = "REMORAID" } }
            }
        },

        -- LENDÁRIOS SECRETOS (Slot de 1%)
        ICE_PATH_B3F = {
            grass = { nite = { [7] = { level = 50, species = "ARTICUNO" } } }
        },
        ROUTE_10_NORTH = {
            grass = { day = { [7] = { level = 50, species = "ZAPDOS" } } }
        },
        SILVER_CAVE_ROOM_2 = {
            grass = { morn = { [7] = { level = 50, species = "MOLTRES" } } }
        },
        SILVER_CAVE_ROOM_3 = {
            grass = {
                morn = { [7] = { level = 60, species = "MEW" } },                   -- 1% (Com o Red de Dia)
                nite = { [7] = { level = 70, species = "MEWTWO" } }                 -- 1% (Com o Red de Noite)
            }
        }
    }

    ---------------------------------------------------------
    -- 3. O INTERCEPTADOR DE ENCONTROS (Runtime Hook)
    ---------------------------------------------------------
    mod.hooks:wrap("encounter.species", function(nextFn, enc, ctx)
        -- 1. Permite que a engine calcule o Pokémon Vanilla e seu slot
        enc = nextFn(enc, ctx)
        if not enc or not enc.species then return enc end

        -- 2. Puxa as variáveis de ambiente
        local mapId = tostring(ctx and ctx.mapId or "")
        local terrain = tostring(ctx and ctx.terrain or "grass")
        local tod = tostring(ctx and (ctx.daytime or ctx.tod) or "DAY"):lower()
        
        -- Normaliza nomenclaturas de tempo da API
        if tod == "dark" then tod = "nite" end
        if tod == "morning" then tod = "morn" end

        -- 3. Verifica o nosso "Array Esparso" de substituição
        if matinhos[mapId] and matinhos[mapId][terrain] and matinhos[mapId][terrain][tod] then
            local tabela_atual = matinhos[mapId][terrain][tod]
            
            -- Se a engine falhar em dizer o slot, rolamos os dados para salvar a vida
            local max_slots = (terrain == "water") and 3 or 7
            local slot_index = tonumber(enc.slot) or math.random(1, max_slots)
            
            if slot_index < 1 then slot_index = 1 end
            if slot_index > max_slots then slot_index = max_slots end

            -- Injeta a mágica APENAS se o slot coincidir com o mod. 
            -- Se não, o Rattata e o Pidgey Vanilla passam ilesos!
            local novo_bicho = tabela_atual[slot_index]
            if novo_bicho then
                enc.species = novo_bicho.species
                enc.level = novo_bicho.level
            end
        end

        return enc
    end)
end
