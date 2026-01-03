execute if score creeper_griefing gamerule matches 1 as @e[type=minecraft:creeper,tag=ncg_explosion] run function ncg:creeper/1

execute if score creeper_griefing gamerule matches 0 as @e[type=minecraft:creeper,tag=!ncg_explosion] positioned as @s run function ncg:creeper/0

execute as @e[type=minecraft:marker,tag=ncg_explosion] on vehicle if data entity @s {Health:0.0f} on passengers run kill @s

execute as @e[type=minecraft:marker,tag=ncg_explosion] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} at @s positioned ~ ~-1 ~ align y run function ncg:custom_explosion/0
