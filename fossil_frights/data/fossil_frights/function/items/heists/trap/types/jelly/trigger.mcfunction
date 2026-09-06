function fossil_frights:items/heists/trap/common/apply_blind_glow
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:glowing 2 0 true
execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] run function fossil_frights:game/heists/paint_fx/add
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
