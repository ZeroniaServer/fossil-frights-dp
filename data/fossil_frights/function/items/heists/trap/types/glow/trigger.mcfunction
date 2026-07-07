function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/apply_blind_glow
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:glowing 10 0 true
particle minecraft:noxious_gas ~ ~0.3 ~ 0.55 0.28 0.55 0.01 36 force
particle minecraft:noxious_gas ~ ~0.15 ~ 0.35 0.12 0.35 0.01 20 force
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
