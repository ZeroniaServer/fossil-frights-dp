setblock -26 81 34 minecraft:waxed_oxidized_copper_golem_statue[copper_golem_pose=running,facing=east] strict

execute unless score $basketball_dance_head_tossed_once ff_task_state matches 1 run execute positioned -26.0 81.0 34.0 run data modify entity @e[limit=1,distance=..0.01,type=minecraft:block_display,tag=ff_coppy_the_copper_golem] block_state.Name set value "minecraft:waxed_exposed_copper_golem_statue"
execute if score $basketball_dance_head_tossed_once ff_task_state matches 1 run execute positioned -26.0 81.0 34.0 run data modify entity @e[limit=1,distance=..0.01,type=minecraft:block_display,tag=ff_coppy_the_copper_golem] block_state.Name set value "minecraft:waxed_weathered_copper_golem_statue"

execute positioned -26.0 81.0 34.0 run data modify entity @e[limit=1,distance=..0.01,type=minecraft:block_display,tag=ff_coppy_the_copper_golem] block_state.Properties.copper_golem_pose set value "running"
