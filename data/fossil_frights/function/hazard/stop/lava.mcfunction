execute if score lava ff_hazard_active matches 0 run return 0

scoreboard players set lava ff_hazard_active 0
setblock -1 71 15 minecraft:coal_block

function fossil_frights:hazard/lava/stop
function fossil_frights:game/bossbar/update_hazards
