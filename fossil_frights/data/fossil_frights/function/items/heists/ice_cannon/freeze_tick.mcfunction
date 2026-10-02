scoreboard players add @s ff_ice_freeze_age 1
tag @a remove ff_ice_freeze_owner
function fossil_frights:entity/match/active
tag @a[limit=1,predicate=fossil_frights:entity/match/active] add ff_ice_freeze_owner
execute if entity @a[limit=1,tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result score $ice_freeze_lock_x ff_ice_freeze_age run data get entity @s Pos[0] 1000
execute if entity @a[limit=1,tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result score $ice_freeze_lock_z ff_ice_freeze_age run data get entity @s Pos[2] 1000
execute if entity @a[limit=1,tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result storage fossil_frights:ice_freeze_lock x double 0.001 run scoreboard players get $ice_freeze_lock_x ff_ice_freeze_age
execute if entity @a[limit=1,tag=ff_ice_freeze_owner,predicate=fossil_frights:entity/effects/levitation] store result storage fossil_frights:ice_freeze_lock z double 0.001 run scoreboard players get $ice_freeze_lock_z ff_ice_freeze_age
execute as @a[tag=ff_ice_freeze_owner] at @s if predicate fossil_frights:entity/effects/levitation run function fossil_frights:items/heists/ice_cannon/freeze_lock_xz with storage fossil_frights:ice_freeze_lock
execute positioned as @a[tag=ff_ice_freeze_owner] run tp @s ~ ~ ~
tag @a remove ff_ice_freeze_owner
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 10 run data merge entity @s {block_state:{id:"minecraft:frosted_ice",properties:{age:"1"}}}
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 20 run data merge entity @s {block_state:{id:"minecraft:frosted_ice",properties:{age:"2"}}}
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 30 run data merge entity @s {block_state:{id:"minecraft:frosted_ice",properties:{age:"3"}}}
execute unless entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 41.. run function fossil_frights:items/heists/ice_cannon/freeze_end
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 25 run data merge entity @s {block_state:{id:"minecraft:frosted_ice",properties:{age:"1"}}}
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 50 run data merge entity @s {block_state:{id:"minecraft:frosted_ice",properties:{age:"2"}}}
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 75 run data merge entity @s {block_state:{id:"minecraft:frosted_ice",properties:{age:"3"}}}
execute if entity @s[tag=ff_trap_freeze_block] if score @s ff_ice_freeze_age matches 100.. run function fossil_frights:items/heists/ice_cannon/freeze_end
