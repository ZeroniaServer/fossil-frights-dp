execute if score lava ff_hazard_active matches 1 run return 0

scoreboard players set lava ff_hazard_active 1
function fossil_frights:hazard/lava/map/update
function fossil_frights:game/bossbar/update_hazards
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil-frights:hazards.lava master @s ~ ~ ~ 1 1
setblock -1 71 15 minecraft:magma_block

function fossil_frights:hazard/lava/start
function fossil_frights:advancements/checks/hazardous
