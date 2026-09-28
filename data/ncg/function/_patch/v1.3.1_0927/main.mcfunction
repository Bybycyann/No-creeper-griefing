# Date: 20260927
# Version: v1.3.0 ..
# Type: rename
# Files:
#   - /data/ncg/__init__.mcfunction
# Description:
#   - rename grefing  -> griefing

execute unless data storage pmc:pack { "idList": ["no_creeper_grefing"] } run return 1

data modify storage pmc:pack packInfo.no_creeper_griefing set from storage pmc:pack packInfo.no_creeper_grefing
data remove storage pmc:pack packInfo.no_creeper_grefing
execute summon minecraft:marker run function ncg:_patch/v1.3.1_0927/1.1
