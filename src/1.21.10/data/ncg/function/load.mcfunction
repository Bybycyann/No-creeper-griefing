# SCORE
    # GAMERULE
    scoreboard objectives add gamerule dummy [{"text":"Gamerule","color":"gold"}]
        # 苦力怕破坏方块
        execute unless score creeper_griefing gamerule matches 0..1 run scoreboard players set creeper_griefing gamerule 0
    # DEATH_TRIGGER
    scoreboard objectives add ncg.death dummy
        execute unless predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#score"},score:"ncg.death"},range:{min:-2147483648,max:2147483647}} run scoreboard players set #score ncg.death 0