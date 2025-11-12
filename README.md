# No creeper griefing

> By - Qbai

## 卸载与重启

- 使用 `/function ncg/disable` 卸载数据包 (仍需手动在存档 datapack 目录下删除包体)

- 使用 `/datapack enable "file/No creeper griefing"` 重启数据包 (如果没有卸载存档 datapack 目录下的包体的话)

## 游戏规则

> 基于 scoreboard, 使用 `/scoreboard players set <规则名称> gamerule <规则值>` 管理游戏规则.
>

|    游戏规则ID    |    名称    |            描述            | 分类 | 值类型 |  默认值   |              效果              |
| :--------------: | :--------: | :------------------------: | :--: | :----: | :-------: | :----------------------------: |
| creeper_griefing | 苦力怕破坏 | 控制苦力怕的爆炸的破坏行为 | 生物 | 布尔值 | 0 (false) | 苦力怕爆炸是否会对方块造成破坏 |

