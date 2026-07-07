data merge entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..0.75] {Glowing:1b,NoGravity:1b,Motion:[0.0d,0.07d,0.0d],PickupDelay:32767}
tag @e[type=minecraft:item,sort=nearest,limit=1,distance=..0.75] add ff_trap_glow
tag @e[type=minecraft:item,sort=nearest,limit=1,distance=..0.75] add ff_ag_float
schedule function fossil_frights:items/heists/trap/common/remove_item_glow 40t append
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/float_item 10t append
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/restore_float_item 120t append
particle minecraft:portal ~ ~0.5 ~ 0.5 0.6 0.5 0.18 50 force
particle minecraft:reverse_portal ~ ~0.3 ~ 0.35 0.4 0.35 0.08 20 force
playsound minecraft:entity.enderman.teleport player @a[distance=..15] ~ ~ ~ 0.7 1.3
function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
