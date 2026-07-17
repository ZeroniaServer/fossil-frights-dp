function fossil_frights:items/heists/trap/common/apply_blind_glow
particle minecraft:reverse_portal ~ ~0.35 ~ 0.45 0.25 0.45 0.01 24 force
particle minecraft:portal ~ ~0.25 ~ 0.35 0.18 0.35 0.02 16 force
particle minecraft:portal ~ ~0.5 ~ 0.5 0.6 0.5 0.2 35 force
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:levitation 5 5 true
execute positioned ~-1.5 ~-1.5 ~-1.5 run effect give @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] minecraft:glowing 2 0 true
execute positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[team=ff_thief,gamemode=!spectator,dx=3,dy=3,dz=3] add ff_antigravity_fx
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/levitation 10t append
schedule function fossil_frights:items/heists/trap/types/antigravity/fx/remove_tag 105t append
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
