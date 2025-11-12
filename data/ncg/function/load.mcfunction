# 游戏规则计分板
scoreboard objectives add gamerule dummy
# 苦力怕破坏方块
execute unless score creeper_griefing gamerule matches 0..1 run scoreboard players set creeper_griefing gamerule 0