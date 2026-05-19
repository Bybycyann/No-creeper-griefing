execute unless score creeper_griefing gamerule matches 0 run return run kill @s

# 死亡
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} on vehicle unless predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"ncg.death"},range:{min:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#score"},score:"ncg.death"},max:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#score"},score:"ncg.death"}}} on passengers run return run kill @s

# 消失
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} run return 1

execute at @s unless entity @a[distance=..60] run return run kill @s
execute as @s[tag=!ncg.powered] at @s positioned ~ ~-1 ~ run function ncg:custom_explosion/defult with entity @s data
execute as @s[tag=ncg.powered] at @s positioned ~ ~-1 ~ run function ncg:custom_explosion/powered with entity @s data
kill @s
