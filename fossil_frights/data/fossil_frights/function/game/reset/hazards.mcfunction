scoreboard players set lights ff_hazard_active 0
function fossil_frights:hazard/lights/update_camera_computer
scoreboard players set lava ff_hazard_active 0
scoreboard players set floods ff_hazard_active 0
scoreboard players set security ff_hazard_active 0
scoreboard players set curse ff_hazard_active 0
function fossil_frights:hazard/curse/update_forcefield
kill @e[type=minecraft:armor_stand,tag=ff_hazard_compass_target]

# Use direct reset logic here. Full hazard stop paths can play animations.
function fossil_frights:hazard/lights/stop

place template fossil_frights:lava/phase_0 -26 69 17
scoreboard players set #lava_mode ff_hazard_rng 0
scoreboard players set #lava_phase ff_hazard_rng 0
scoreboard players set #lava_anim_phase ff_hazard_rng 0
scoreboard players set #lava_anim_timer ff_hazard_rng 0

# Seed manual button cooldowns so the tick gate (matches ..0) can pass.
scoreboard players set #lava_manual_cooldown ff_hazard_rng 0
scoreboard players set #curse_manual_cooldown ff_hazard_rng 0
function fossil_frights:game/heists/loot/reset_basement_lava_lock

function fossil_frights:hazard/floods/stop
function fossil_frights:hazard/security/stop
function fossil_frights:hazard/curse/stop
function fossil_frights:game/bossbar/update_hazards
