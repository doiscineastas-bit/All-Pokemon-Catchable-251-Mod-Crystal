return function(mod)
    mod.log:info("Loading Evolutions for Crystal 251 (Trade Fixes)...")

    -- 1. TROCAS CLÁSSICAS (Gen 1)
    mod.content.pokemon:patch("KADABRA", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "MOON_STONE", into = "ALAKAZAM" },
            { method = "EVOLVE_LEVEL", level = 40, into = "ALAKAZAM" }
        }
    })
    mod.content.pokemon:patch("MACHOKE", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "SUN_STONE", into = "MACHAMP" },
            { method = "EVOLVE_LEVEL", level = 40, into = "MACHAMP" }
        }
    })
    mod.content.pokemon:patch("GRAVELER", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "SUN_STONE", into = "GOLEM" },
            { method = "EVOLVE_LEVEL", level = 40, into = "GOLEM" }
        }
    })
    mod.content.pokemon:patch("HAUNTER", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "MOON_STONE", into = "GENGAR" },
            { method = "EVOLVE_LEVEL", level = 40, into = "GENGAR" }
        }
    })

    -- 2. NOVAS TROCAS COM ITENS (Gen 2)
    mod.content.pokemon:patch("POLIWHIRL", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "POLITOED" },
            { method = "EVOLVE_LEVEL", level = 40, into = "POLITOED" }
        }
    })
    mod.content.pokemon:patch("SLOWPOKE", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "SLOWKING" },
            { method = "EVOLVE_LEVEL", level = 40, into = "SLOWKING" }
        }
    })
    mod.content.pokemon:patch("ONIX", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "SUN_STONE", into = "STEELIX" },
            { method = "EVOLVE_LEVEL", level = 40, into = "STEELIX" }
        }
    })
    mod.content.pokemon:patch("SCYTHER", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "LEAF_STONE", into = "SCIZOR" },
            { method = "EVOLVE_LEVEL", level = 40, into = "SCIZOR" }
        }
    })
    mod.content.pokemon:patch("SEADRA", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "KINGDRA" },
            { method = "EVOLVE_LEVEL", level = 40, into = "KINGDRA" }
        }
    })
    mod.content.pokemon:patch("PORYGON", {
        evolutions = {
            { method = "EVOLVE_ITEM", item = "THUNDERSTONE", into = "PORYGON2" },
            { method = "EVOLVE_LEVEL", level = 40, into = "PORYGON2" }
        }
    })
end
