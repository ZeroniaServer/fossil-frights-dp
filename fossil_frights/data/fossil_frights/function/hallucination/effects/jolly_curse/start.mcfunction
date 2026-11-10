function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil_frights:hallucinations.jolly_curse master @s ~ ~ ~ 1 1
function fossil_frights:hallucination/effects/jolly_curse/start_cycle
