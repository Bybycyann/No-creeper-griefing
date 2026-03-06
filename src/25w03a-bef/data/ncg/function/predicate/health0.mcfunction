# ```
# 坐骑死亡判定
# 0 death|1 life
# ```

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} on vehicle unless predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"ncg.death"},range:{min:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#score"},score:"ncg.death"},max:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#score"},score:"ncg.death"}}} run return 0
return 1