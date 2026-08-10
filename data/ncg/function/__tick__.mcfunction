execute unless score creeper_griefing gamerule matches 0 run scoreboard players set creeper_griefing gamerule 1
execute unless score creeper_damage gamerule matches 0 run scoreboard players set creeper_damage gamerule 1

execute as @e[type=minecraft:creeper,tag=!ncg.source] run function ncg:creeper/main
execute as @e[tag=ncg.explosion,type=minecraft:marker] run function ncg:marker/main
execute as @e[tag=ncg.source] run function ncg:source/main
execute if score #score ncg.death matches ..2147483647 run return run scoreboard players add #score ncg.death 1
scoreboard players set #score ncg.death -2147483648
