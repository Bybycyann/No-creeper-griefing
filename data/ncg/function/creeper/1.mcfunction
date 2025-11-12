# creeper radius
execute on passengers run data modify storage minecraft:temp ncg_creeper.radius set from entity @s data.radius
data modify entity @s ExplosionRadius set from storage minecraft:temp ncg_creeper.radius

# kill marker
execute on passengers run kill @s

# creeper
tag @s remove ncg_explosion

#reset
data remove storage minecraft:temp ncg_creeper