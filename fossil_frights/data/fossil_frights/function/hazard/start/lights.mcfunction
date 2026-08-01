execute if score lights ff_hazard_active matches 1 run return 0

scoreboard players set lights ff_hazard_active 1
function fossil_frights:hazard/lights/update_camera_computer
function fossil_frights:advancements/checks/hazardous
function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil-frights:hazards.lights master @s ~ ~ ~ 1 1
scoreboard players set #lights_start_phase ff_hazard_rng 0
scoreboard players set #lights_stop_phase ff_hazard_rng 0

function fossil_frights:hazard/lights/start
