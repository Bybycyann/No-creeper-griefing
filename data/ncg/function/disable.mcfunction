# creeper
execute as @e[type=minecraft:creeper,tag=ncg_explosion] run function ncg:creeper/1

# scoreboard
scoreboard objectives remove gamerule

# output
tellraw @s {"text": "于存档 datapack 目录下移除包体实现卸载, 或使用 /datapack disable 禁用数据包.", "color": "green"}