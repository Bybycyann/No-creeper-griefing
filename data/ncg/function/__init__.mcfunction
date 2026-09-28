# __init__
scoreboard objectives add pmc.var dummy [{ "text": "PMC", "color": "aqua" }, { "text": "Variables", "color": "gold" }]
function #ncg:patch

execute \
  if data storage pmc:pack { "idList": ["no_creeper_griefing"] } \
  if data storage pmc:pack packInfo.no_creeper_griefing{ "version": "v1.3.2" } \
run return 1

execute unless data storage pmc:pack idList run data merge storage pmc:pack { "idList": [] }

execute unless data storage pmc:pack { "idList": ["no_creeper_griefing"] } run data modify storage pmc:pack idList append value "no_creeper_griefing"
data modify storage pmc:pack packInfo merge value {\
  "no_creeper_griefing": {\
    "id": "no_creeper_griefing",\
    "version": "v1.3.2",\
    "namespace": ["ncg"],\
    "requires": []\
  }\
}

# Config
data modify storage pmc:io stack append value {}
data modify storage pmc:io stack[-1] set from storage pmc:pack config.no_creeper_griefing
data modify storage pmc:pack config.no_creeper_griefing set value {\
  "rule.creeper_griefing": false,\
  "rule.creeper_damage": true\
}
data modify storage pmc:pack config.no_creeper_griefing merge from storage pmc:io stack[-1]
execute if score creeper_griefing gamerule matches -2147483648..2147483647 \
  store result storage pmc:pack config.no_creeper_griefing."rule.creeper_griefing" byte 1 run scoreboard players get creeper_griefing gamerule
execute if score creeper_damage gamerule matches -2147483648..2147483647 \
  store result storage pmc:pack config.no_creeper_griefing."rule.creeper_damage" byte 1 run scoreboard players get creeper_damage gamerule
data remove storage pmc:io stack[-1]

# -------------------- #

# scoreboard
  # gamerule
  scoreboard objectives add gamerule dummy [{ "text": "Gamerule", "color": "gold" }]
    execute store result score creeper_griefing gamerule run data get storage pmc:pack config.no_creeper_griefing."rule.creeper_griefing"
    execute store result score creeper_damage gamerule run data get storage pmc:pack config.no_creeper_griefing."rule.creeper_damage"
  # death
  scoreboard objectives add ncg.death dummy
    scoreboard players set #score ncg.death 0
