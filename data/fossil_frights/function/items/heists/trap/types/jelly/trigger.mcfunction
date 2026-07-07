function fossil_frights:items/heists/trap/common/apply_blind_glow
execute positioned ~-1.5 ~-1.5 ~-1.5 run scoreboard players set @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] ff_heist_paint_fx 200
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
