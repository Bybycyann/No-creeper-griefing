tag @s add ncg.explosion
tag @s add smithed.entity
execute if data storage pmc:io stack[-1].creeper_data{"powered": true} run tag @s add ncg.powered
ride @s mount @e[tag=tmp,limit=1]
data modify entity @s data set from storage pmc:io stack[-1].custom_explosion
