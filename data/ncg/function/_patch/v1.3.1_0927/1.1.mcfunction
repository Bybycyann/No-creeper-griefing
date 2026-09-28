data modify entity @s Tags set from storage pmc:pack idList
tag @s remove no_creeper_grefing
tag @s add no_creeper_griefing
data modify storage pmc:pack idList set from entity @s Tags
kill @s
