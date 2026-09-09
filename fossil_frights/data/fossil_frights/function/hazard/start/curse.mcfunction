execute if score curse ff_hazard_active matches 1 run return 0

scoreboard players set curse ff_hazard_active 1
function fossil_frights:run_breakdown/event/add {code:"H",id:"51"}
scoreboard players set #curse_forcefield_sound ff_hazard_rng 40
function fossil_frights:hazard/curse/update_forcefield
function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil-frights:hazards.curse master @s ~ ~ ~ 1 1
scoreboard players set #curse_indicator ff_hazard_rng 0
scoreboard players set #curse_indicator_timer ff_hazard_rng 8
function fossil_frights:hazard/curse/remove_toggle

function fossil_frights:hazard/curse/start
function fossil_frights:advancements/checks/hazardous
