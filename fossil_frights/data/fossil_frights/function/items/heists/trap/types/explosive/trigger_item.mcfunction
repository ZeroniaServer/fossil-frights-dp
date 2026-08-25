advancement grant @p[team=ff_thief,gamemode=!spectator,distance=..24] only fossil_frights:02_achievements/heists_defusal
particle minecraft:explosion_emitter ~ ~0.1 ~ 0 0 0 0 1 force
particle minecraft:poof ~ ~0.2 ~ 1.1 0.55 1.1 0.08 48 force
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1.1
function fossil_frights:items/heists/trap/types/explosive/kill_nearby_players {distance: 2}
kill @e[type=minecraft:item,sort=nearest,limit=1,distance=..0.6]
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
