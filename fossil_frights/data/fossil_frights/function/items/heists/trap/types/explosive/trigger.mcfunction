function fossil_frights:items/heists/trap/common/apply_blind_glow
function fossil_frights:entity/match/active
particle minecraft:explosion_emitter ~ ~0.1 ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~0.12 ~ 0.45 0.2 0.45 0.18 48 force
particle minecraft:poof ~ ~0.2 ~ 1.1 0.55 1.1 0.08 48 force
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1.1
function fossil_frights:items/heists/trap/types/explosive/kill_nearby_players {distance: 5.5}
function fossil_frights:items/heists/trap/common/trigger_sound
function fossil_frights:items/heists/trap/common/start_cooldown
kill @s
