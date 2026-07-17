advancement grant @p[team=ff_thief,gamemode=!spectator,distance=..24] only fossil_frights:02_achievements/heists_defusal
data merge entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1.6] {Glowing:1b}
tag @e[type=minecraft:item,sort=nearest,limit=1,distance=..1.6] add ff_trap_glow
schedule function fossil_frights:items/heists/trap/common/remove_item_glow 40t append
function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
