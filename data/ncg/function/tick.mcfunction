# gamerule
execute if score creeper_griefing gamerule matches 1 as @e[tag=ncg_explosion,type=minecraft:creeper] run function ncg:creeper/1
execute if score creeper_griefing gamerule matches 0 as @e[tag=!ncg_explosion,type=minecraft:creeper,tag=!smithed.entity] positioned as @s run function ncg:creeper/0

# core
execute as @e[tag=ncg_explosion,type=minecraft:creeper] run scoreboard players operation @s ncg.death = #score ncg.death
execute as @e[type=minecraft:marker,tag=ncg_explosion] unless function ncg:predicate/health0 run kill @s
execute as @e[type=minecraft:marker,tag=ncg_explosion] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} at @s positioned ~ ~-1 ~ align y run function ncg:custom_explosion/0

execute if predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#score"},score:"ncg.death"},range:{min:0,max:2000000000}} run return run scoreboard players add #score ncg.death 1
scoreboard players set #score ncg.death 0
