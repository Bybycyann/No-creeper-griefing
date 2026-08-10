tag @s add ncg.explosion
data modify storage pmc:io stack[-1].creeper_data set from entity @s
data modify storage pmc:io stack[-1].custom_explosion merge value {"block_interaction": "none","create_fire": 0,"damage": 1,"radius": 3}

execute if data storage pmc:io stack[-1].creeper_data.ExplosionRadius run data modify storage pmc:io stack[-1].custom_explosion.radius set from storage pmc:io stack[-1].creeper_data.ExplosionRadius
execute store result storage pmc:io stack[-1].custom_explosion.damage int 1 run scoreboard players get creeper_damage gamerule

tag @s add tmp
execute summon minecraft:marker run function ncg:creeper/1.2.1
tag @s remove tmp
data modify entity @s ExplosionRadius set value 0
