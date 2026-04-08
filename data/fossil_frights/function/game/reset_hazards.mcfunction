scoreboard players set lights ff_hazard_active 0
scoreboard players set lava ff_hazard_active 0
scoreboard players set floods ff_hazard_active 0
scoreboard players set security ff_hazard_active 0
scoreboard players set curse ff_hazard_active 0

# Use the lighter reset path here. The full hazard/stop/all path runs
# cinematic stop logic that is too heavy for startup/end resets.
function fossil_frights:hazard/lights/stop

fill -25 69 18 3 70 50 minecraft:stone replace minecraft:lava
fill -25 69 18 3 70 50 minecraft:stone replace minecraft:magma_block
scoreboard players set #lava_mode ff_hazard_rng 0
scoreboard players set #lava_phase ff_hazard_rng 0
scoreboard players set #lava_anim_phase ff_hazard_rng 0
scoreboard players set #lava_anim_timer ff_hazard_rng 0

function fossil_frights:hazard/floods/stop
function fossil_frights:hazard/security/stop
function fossil_frights:hazard/curse/stop
