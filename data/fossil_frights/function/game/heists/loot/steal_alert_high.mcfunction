# A high-value loot was just stolen: blare the alarm and slam the security gates.
execute as @a[tag=ff_active] at @s run function fossil_frights:game/heists/loot/alarm_effects
execute as @a[gamemode=spectator,tag=!ff_active] at @s run function fossil_frights:game/heists/loot/alarm_effects
function fossil_frights:hazard/start/security
scoreboard players set $security_by_loot ff_heist 1
