tag @s add ff_trap_state_owner_check
scoreboard players reset @s ff_trap_glow_phase
scoreboard players reset @s ff_trap_glow_timer
scoreboard players reset @s ff_trap_freeze_phase
scoreboard players reset @s ff_trap_freeze_timer
scoreboard players reset @s ff_trap_antigravity_phase
scoreboard players reset @s ff_trap_antigravity_timer
scoreboard players reset @s ff_trap_jelly_phase
scoreboard players reset @s ff_trap_jelly_timer
scoreboard players reset @s ff_trap_explosive_phase
scoreboard players reset @s ff_trap_explosive_timer
function fossil_frights:entity/match/active
execute as @e[type=minecraft:marker,tag=ff_trap,predicate=fossil_frights:entity/match/active] run function fossil_frights:items/heists/trap/common/set_owner_deployed_phase
tag @s remove ff_trap_state_owner_check
