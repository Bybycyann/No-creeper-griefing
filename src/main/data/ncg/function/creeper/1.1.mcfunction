tag @s remove ncg.explosion
execute on passengers as @s[tag=ncg.explosion] run function ncg:creeper/1.1.1
data modify entity @s ExplosionRadius set from storage pmc:io stack[-1].radius
