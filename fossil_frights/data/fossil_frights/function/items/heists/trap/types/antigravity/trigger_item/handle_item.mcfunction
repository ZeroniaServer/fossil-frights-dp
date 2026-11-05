execute on origin run advancement grant @s[predicate=fossil_frights:player/team/thief] only fossil_frights:02_achievements/heists_defusal

execute if entity @s[type=minecraft:fishing_bobber] run data modify entity @s Motion[1] set value 1
execute if entity @s[type=minecraft:fishing_bobber] run return 1

data merge entity @s {Glowing:true,NoGravity:true,PickupDelay:32767}
data modify entity @s Motion[1] set value 0.07
tag @s add ff_ag_float
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/float_item 10t append
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/restore_float_item 120t append
tag @s add ff_trap_glow
schedule function fossil_frights:items/heists/trap/common/remove_item_glow 40t append

return 1
