function fossil_frights:items/heists/trap/common/apply_blind_glow
execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] at @s run function fossil_frights:items/heists/trap/types/freeze/freeze_player
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
