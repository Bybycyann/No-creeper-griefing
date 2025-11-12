# summon marker
summon minecraft:marker ~ ~ ~ {Tags:["ncg_explosion","init"]}

# storage data
data modify storage minecraft:temp ncg_creeper set from entity @s
data modify storage minecraft:temp custom_explosion.radius set value 3
execute if data storage minecraft:temp ncg_creeper.ExplosionRadius run data modify entity @e[type=minecraft:marker,tag=init,tag=ncg_explosion,limit=1] data.radius set from storage minecraft:temp ncg_creeper.ExplosionRadius
data modify storage minecraft:temp custom_explosion merge value {"block_interaction":"none","create_fire":0,"damage":1}

# marker data
data modify entity @e[type=minecraft:marker,tag=init,tag=ncg_explosion,limit=1] data set from storage minecraft:temp custom_explosion

# creeper radius
data modify entity @s ExplosionRadius set value 0
tag @s add ncg_explosion

# ride
ride @e[type=minecraft:marker,tag=init,tag=ncg_explosion,limit=1] mount @s

# reset
tag @n[type=minecraft:marker,tag=init,tag=ncg_explosion] remove init
data remove storage minecraft:temp ncg_creeper
data remove storage minecraft:temp custom_explosion