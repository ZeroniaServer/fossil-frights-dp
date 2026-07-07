function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/apply_blind_glow
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:glowing 10 0 true
particle minecraft:sculk_soul ~ ~0.3 ~ 0.72 0.38 0.72 0 62 force
particle minecraft:soul_fire_flame ~ ~0.12 ~ 0.28 0.14 0.28 0 12 force
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
