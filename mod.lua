-- Inicialização do Mod
local Crystal251 = {}

function Crystal251.OnInit()
    print("Iniciando Mod: All Pokemon Catchable 251...")

    ---------------------------------------------------------
    -- 1. EVOLUÇÕES POR PEDRA
    ---------------------------------------------------------
    -- Vamos interceptar os dados de evolução originais 
    -- e substituir o método EVOLVE_TRADE por EVOLVE_ITEM.
    
    local novas_evolucoes = {
        ["HAUNTER"]  = { method = "ITEM", item = "MOON_STONE", target = "GENGAR" },
        ["MACHOKE"]  = { method = "ITEM", item = "SUN_STONE",  target = "MACHAMP" },
        ["GRAVELER"] = { method = "ITEM", item = "SUN_STONE",  target = "GOLEM" },
        ["KADABRA"]  = { method = "ITEM", item = "MOON_STONE", target = "ALAKAZAM" },
        ["SEADRA"]   = { method = "ITEM", item = "WATER_STONE",target = "KINGDRA" },
        ["ONIX"]     = { method = "ITEM", item = "SUN_STONE",  target = "STEELIX" },
        ["SCYTHER"]  = { method = "ITEM", item = "LEAF_STONE", target = "SCIZOR" },
        ["SLOWPOKE"] = { method = "ITEM", item = "WATER_STONE",target = "SLOWKING" },
        ["POLIWHIRL"]= { method = "ITEM", item = "MOON_STONE", target = "POLITOED" },
        ["PORYGON"]  = { method = "ITEM", item = "THUNDERSTONE",target= "PORYGON2" }
    }

    -- O Hook intercepta a leitura de evolução do Pokémon
    Mod.hook("GetEvoData", function(species, original_evos)
        if novas_evolucoes[species] then
            -- Se o Pokémon estiver na nossa lista, injetamos a nova regra
            return { novas_evolucoes[species] }
        end
        -- Caso contrário, retorna a evolução original (vanilla)
        return original_evos
    end)

    ---------------------------------------------------------
    -- 2. ENCONTROS SELVAGENS
    ---------------------------------------------------------
    -- A tabela da Crystal tem 7 slots de porcentagem exata por período:
    -- 30%, 30%, 20%, 10%, 5%, 4%, 1%.
    -- Vamos sobrescrever as rotas específicas.
    
    local novos_encontros = {
        -- Adicionando Chikorita (10%) na Rota 31 de Manhã (MORN)
        ["ROUTE_31"] = {
            MORN = {
                { chance = 30, species = "LEDYBA" },
                { chance = 30, species = "CATERPIE" },
                { chance = 20, species = "BELLSPROUT" },
                { chance = 10, species = "CHIKORITA" }, -- O seu slot de 10%
                { chance = 5,  species = "PIDGEY" },
                { chance = 4,  species = "HOPPIP" },
                { chance = 1,  species = "RATTATA" }
            }
            -- DAY e NITE continuam iguais ou você pode especificá-los aqui
        },
        
        -- Adicionando Vulpix na Rota 36 de Manhã
        ["ROUTE_36"] = {
            MORN = {
                { chance = 30, species = "LEDYBA" },
                { chance = 30, species = "VULPIX" },    -- Vulpix inserido num slot alto
                { chance = 20, species = "BELLSPROUT" },
                { chance = 10, species = "GROWLITHE" },
                { chance = 5,  species = "PIDGEY" },
                { chance = 4,  species = "STANTLER" },
                { chance = 1,  species = "RATTATA" }
            }
        },

        -- Adicionando Mew (1%) no topo do Mt. Silver (Manhã)
        ["SILVER_CAVE_ROOM_3"] = {
            MORN = {
                { chance = 30, species = "GOLBAT" },
                { chance = 30, species = "ONIX" },
                { chance = 20, species = "GRAVELER" },
                { chance = 10, species = "URSARING" },
                { chance = 5,  species = "DONPHAN" },
                { chance = 4,  species = "LARVITAR" },
                { chance = 1,  species = "MEW" }        -- O slot secreto de 1%
            }
        }
    }

    -- O Hook intercepta o gerador de encontros da grama
    Mod.hook("GetGrassEncounters", function(map_id, time_of_day, original_table)
        if novos_encontros[map_id] and novos_encontros[map_id][time_of_day] then
            -- Injerta a tabela customizada
            return novos_encontros[map_id][time_of_day]
        end
        return original_table
    end)
end

-- Registra o ciclo de vida do Mod no motor do Recomp
Mod.register(Crystal251)
