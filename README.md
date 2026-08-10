# No creeper griefing

## 游戏规则

> 基于 scoreboard, 使用 `/scoreboard players set <rule name> gamerule (0(false)|1(true))` 管理游戏规则.
>

|    游戏规则ID    |                             描述                             | 值类型 |   默认值   |            效果            |
| :--------------: | :----------------------------------------------------------: | :----: | :--------: | :------------------------: |
| creeper_griefing | 控制爬行者爆炸与方块之间的相互作用。当被禁用时，苦力怕无法摧毁方块。这与 `mob_griefing` 规则不发生冲突。 |  Bool  | `false(0)` | 苦力怕爆炸是否能够破坏方块 |
|  creeper_damage  | 控制爬行者爆炸是否对实体造成伤害。当被禁用时，苦力怕产生的爆炸不会对实体造成伤害，但仍保留冲击效果。 |  Bool  | `true(1)`  | 苦力怕爆炸是否能够造成伤害 |

##  问题

**Q1. 如何修改苦力怕的 ExplosionRadius 属性？**

当使用该数据包提供的功能 (即规则 `creeper_griefing` 和 `creeper_damage` 不全为 `true`  时) ，如果要实时修改苦力怕的爆炸威力，请使用以下命令进行调整

```mcfunction
execute as <目标选择器> on passengers as @s[type=minecraft:marker, tag=ncg.explosion, limit=1] run data modify entity @s data.radius set value <value>
```

当未使用时直接修改苦力怕的实体数据即可。
