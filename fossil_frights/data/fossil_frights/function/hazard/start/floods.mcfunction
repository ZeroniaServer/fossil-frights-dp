execute if score floods ff_hazard_active matches 1 run return 0

scoreboard players set floods ff_hazard_active 1
function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil-frights:hazards.floods master @s ~ ~ ~ 1 1
function fossil_frights:hazard/floods/init_monitor

function fossil_frights:hazard/floods/start
function fossil_frights:advancements/checks/hazardous
