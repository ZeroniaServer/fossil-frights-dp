particle minecraft:falling_obsidian_tear ~ ~0.5 ~ 0.4 0.5 0.4 0.05 35 force
particle minecraft:dripping_obsidian_tear ~ ~0.3 ~ 0.3 0.3 0.3 0.08 15 force
playsound minecraft:entity.slime.squish player @a[distance=..15] ~ ~ ~ 1.0 0.8
function fossil_frights:items/heists/trap/common/start_cooldown
function fossil_frights:items/heists/trap/common/trigger_sound
kill @s
