execute unless predicate ncg:custom_explosion run return run kill @s

# 死亡
execute if predicate ncg:riding on vehicle if predicate ncg:death on passengers run return run kill @s

# 消失
execute if predicate ncg:riding run return 1

execute if score creeper_griefing gamerule matches 1 run data modify entity @s data.block_interaction set value "mob"

execute at @s unless entity @a[distance=..60] run return run kill @s
execute as @s[tag=!ncg.powered] at @s positioned ~ ~-1 ~ run function ncg:custom_explosion/defult with entity @s data
execute store result entity @s data.radius int 2 run data get entity @s data.radius
execute as @s[tag=ncg.powered] at @s positioned ~ ~-1 ~ run function ncg:custom_explosion/powered with entity @s data
kill @s
