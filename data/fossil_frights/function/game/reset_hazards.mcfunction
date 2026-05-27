scoreboard players set lights ff_hazard_active 0
scoreboard players set lava ff_hazard_active 0
scoreboard players set floods ff_hazard_active 0
scoreboard players set security ff_hazard_active 0
scoreboard players set curse ff_hazard_active 0

# Use direct reset logic here. Full hazard stop paths can play animations.
function fossil_frights:hazard/lights/stop

place template minecraft:lava_phase_0 -26 69 17
scoreboard players set #lava_mode ff_hazard_rng 0
scoreboard players set #lava_phase ff_hazard_rng 0
scoreboard players set #lava_anim_phase ff_hazard_rng 0
scoreboard players set #lava_anim_timer ff_hazard_rng 0

function fossil_frights:hazard/floods/stop
function fossil_frights:hazard/security/stop
function fossil_frights:hazard/curse/stop
function fossil_frights:game/bossbar/update_hazards
