execute on origin run advancement grant @s[predicate=fossil_frights:player/team/thief] only fossil_frights:02_achievements/heists_defusal

execute if entity @s[type=minecraft:fishing_bobber] run data modify entity @s Glowing set value true
execute if entity @s[type=minecraft:fishing_bobber] run return 1

data modify entity @s Glowing set value true
tag @s add ff_trap_glow
schedule function fossil_frights:items/heists/trap/common/remove_item_glow 40t append

return 1
