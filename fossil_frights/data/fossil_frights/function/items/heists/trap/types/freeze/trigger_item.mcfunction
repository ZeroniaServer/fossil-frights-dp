advancement grant @p[team=ff_thief,gamemode=!spectator,distance=..24] only fossil_frights:02_achievements/heists_defusal
execute as @e[type=minecraft:item,sort=nearest,limit=1,distance=..1.6] at @s run function fossil_frights:items/heists/trap/types/freeze/item/trigger
function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
