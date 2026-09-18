execute store result score @s aj.id run scoreboard players add aj.last_id aj.id 1
function fossil_frights:animations/dinocoin/vending_machine/runtime/gu/get_entity_uuid_string
data modify storage fossil_frights:vending_machine_aj_temp args.uuid set from storage fossil_frights:vending_machine_aj_gu out
execute store result storage fossil_frights:vending_machine_aj_temp args.id int 1 run scoreboard players get @s aj.id
function fossil_frights:animations/dinocoin/vending_machine/runtime/data_manager/create_entry with storage fossil_frights:vending_machine_aj_temp args
execute store result storage fossil_frights:vending_machine_aj_temp args.id int 1 run scoreboard players get @s aj.id
function fossil_frights:animations/dinocoin/vending_machine/runtime/data_manager/read with storage fossil_frights:vending_machine_aj_temp args
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.root_uuid set from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.blueprint_id set value "fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig"
data modify storage fossil_frights:vending_machine_aj_temp entry.data.rig_hash set value "fa02ebde3a976c2756fa25673dd2408dea0d8baeb3acbf28e4e0ae8a5edb9f29"
tp @s ~ ~ ~ ~ ~
execute on passengers if entity @s[tag=animation.popcorn_machine.node.popcorn_bone] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/popcorn_bone
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.popcorn_bone set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.main] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/main
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.main set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone2] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone2
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone2 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone3] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone3
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone3 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone4] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone4
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone4 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone5] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone5
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone5 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone6] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone6
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone6 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone7] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone7
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone7 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone8] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone8
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone8 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone9] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone9
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone9 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone10] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone10
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone10 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone11] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone11
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone11 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone12] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone12
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone12 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone13] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone13
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone13 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone14] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone14
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone14 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone15] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone15
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone15 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone16] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone16
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone16 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone17] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone17
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone17 set from storage fossil_frights:vending_machine_aj_gu out
execute on passengers if entity @s[tag=animation.popcorn_machine.node.corn_bone18] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/as_node/corn_bone18
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids append from storage fossil_frights:vending_machine_aj_gu out
data modify storage fossil_frights:vending_machine_aj_temp entry.data.uuids_by_name.corn_bone18 set from storage fossil_frights:vending_machine_aj_gu out
function fossil_frights:animations/dinocoin/vending_machine/runtime/data_manager/write with storage fossil_frights:vending_machine_aj_temp args
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/set_default_pose
execute if data storage fossil_frights:vending_machine_aj_temp args.variant run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/zzz/variant_arg/no_variants_warning
execute if score #success aj.i matches 0 run return fail
execute if data storage fossil_frights:vending_machine_aj_temp args.animation run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/zzz/summon/animation_arg/process with storage fossil_frights:vending_machine_aj_temp args
execute if score #success aj.i matches 0 run return fail
execute on passengers run rotate @s ~ ~
data modify entity @s teleport_duration set value 1
execute on passengers run data modify entity @s teleport_duration set value 1
tag @s remove aj.new
execute on passengers run tag @s remove aj.new