# Rare or Heavy loot was just stolen: blare the alarm and slam the security gates.
function fossil_frights:game/heists/alarm_effects/start
execute as @a[team=ff_guard] at @s run playsound fossil_frights:heists.alarm master @s ~ ~ ~ 1 1
execute as @a[team=ff_thief] at @s run playsound fossil_frights:heists.alarm master @s ~ ~ ~ 1 1
execute as @a[team=ff_spectator] at @s run playsound fossil_frights:heists.alarm master @s ~ ~ ~ 1 1
function fossil_frights:hazard/start/security
scoreboard players set $security_by_loot ff_heist 1
