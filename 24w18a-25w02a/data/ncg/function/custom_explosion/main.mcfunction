# 爆炸生成 1.21-1.21.5 
# 25w03a ArmorItems -> equipment
$summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"$(block_interaction)-$(create_fire)-$(damage)","color":"#00FFD9"}',ArmorItems:[{},{},{id:"minecraft:paper",components:{"minecraft:enchantments":{"ncg:custom_explosion":$(radius)}}},{}],"Invisible":true}