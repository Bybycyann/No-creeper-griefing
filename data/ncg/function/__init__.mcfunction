# __init__

execute if data storage pmc:pack {"idList": ["no_creeper_grefing"]} run return 1

execute unless data storage pmc:pack idList run data merge storage pmc:pack {"idList": []}
data modify storage pmc:pack idList append value "no_creeper_grefing"
data modify storage pmc:pack packInfo merge value {"no_creeper_grefing":{"id": "no_creeper_grefing", "version": "v1.2", "namespace": "ncg", "requires": []}}

# scoreboard
    # gamerule
    scoreboard objectives add gamerule dummy [{"text": "Gamerule","color": "gold"}]
        # creeper_griefing
        scoreboard players set creeper_griefing gamerule 0
    # death
    scoreboard objectives add ncg.death dummy
        scoreboard players set #score ncg.death 0
