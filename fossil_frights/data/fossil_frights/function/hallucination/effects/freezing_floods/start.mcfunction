scoreboard players set #freezing_floods_timer ff_hallucination 0
schedule clear fossil_frights:hazard/floods/drain_water/schedule
schedule clear fossil_frights:hallucination/effects/freezing_floods/drain_water/schedule
kill @e[type=minecraft:marker,tag=ff_drain_water]
kill @e[type=minecraft:marker,tag=ff_freezing_flood_drain]
function fossil_frights:hallucination/effects/freezing_floods/set_sources
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil_frights:hazards.floods master @s ~ ~ ~ 1 1
