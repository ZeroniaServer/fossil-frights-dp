advancement grant @p[team=ff_thief,gamemode=!spectator,distance=..24] only fossil_frights:02_achievements/heists_defusal
data modify entity @e[type=minecraft:item,sort=nearest,limit=1,distance=..1.6] Glowing set value true
tag @e[type=minecraft:item,sort=nearest,limit=1,distance=..1.6] add ff_trap_glow
schedule function fossil_frights:items/heists/trap/common/remove_item_glow 40t append
particle minecraft:snowflake ~ ~0.3 ~ 0.55 0.4 0.55 0.04 60 force
particle minecraft:white_ash ~ ~0.5 ~ 0.5 0.5 0.5 0.05 25 force
playsound minecraft:entity.snowball.throw player @a[distance=..15] ~ ~ ~ 1.0 1.2
function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
