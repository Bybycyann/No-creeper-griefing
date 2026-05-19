data modify storage pmc:io stack append value {}
execute as @s[tag=ncg.explosion] if score creeper_griefing gamerule matches 1 run function ncg:creeper/1.1
execute as @s[tag=!ncg.explosion] if score creeper_griefing gamerule matches 0 run function ncg:creeper/1.2
execute as @s[tag=ncg.explosion] if score creeper_griefing gamerule matches 0 run function ncg:creeper/1.3
data remove storage pmc:io stack[-1]
scoreboard players operation @s ncg.death = #score ncg.death
