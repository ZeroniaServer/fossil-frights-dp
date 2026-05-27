execute if score floods ff_hazard_active matches 1 run return 0

scoreboard players set floods ff_hazard_active 1
function fossil_frights:advancements/checks/hazardous
function fossil_frights:game/bossbar/update_hazards
execute as @a[tag=ff_active] at @s run playsound fossil-frights:hazards.floods master @s ~ ~ ~ 1 1
function fossil_frights:hazard/floods/init_monitor

function fossil_frights:hazard/floods/start
