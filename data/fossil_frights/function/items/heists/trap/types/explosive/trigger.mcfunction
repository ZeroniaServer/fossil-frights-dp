function fossil_frights:items/heists/trap/common/apply_blind_glow
execute if entity @a[team=ff_thief,gamemode=!spectator,distance=..5.5] as @a[team=ff_guard] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_3 run advancement grant @s only fossil_frights:02_achievements/heists_kaboom
particle minecraft:explosion_emitter ~ ~0.1 ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~0.12 ~ 0.45 0.2 0.45 0.18 48 force
particle minecraft:poof ~ ~0.2 ~ 1.1 0.55 1.1 0.08 48 force
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1.1
execute as @a[gamemode=!spectator,distance=..5.5] run function fossil_frights:items/heists/trap/types/explosive/kill_player
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
