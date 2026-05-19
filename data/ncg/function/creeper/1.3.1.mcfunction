# data modify entity @s data.radius set from storage pmc:io stack[-1].creeper_data.ExplosionRadius
execute if data storage pmc:io stack[-1].creeper_data{"powered": true} run tag @s add ncg.powered
