execute positioned 44.5 64.25 82.5 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
execute positioned 44.5 64.25 82.5 run playsound minecraft:entity.generic.explode player @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.8 1.1
execute positioned 45.5 67.0 77.0 run playsound minecraft:entity.creaking.death block @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.6 0

scoreboard players set #rocks_spawned ff_dummy 0
execute if predicate {type:"minecraft:random_chance",chance:0.5} run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:1}
execute if predicate {type:"minecraft:random_chance",chance:0.5} run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:2}
execute if predicate {type:"minecraft:random_chance",chance:0.5} run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:3}
execute if predicate {type:"minecraft:random_chance",chance:0.5} run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:4}
execute if predicate {type:"minecraft:random_chance",chance:0.5} run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:5}
execute if predicate {type:"minecraft:random_chance",chance:0.5} run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:6}
execute if score #rocks_spawned ff_dummy matches 0 run function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock {num:1}

schedule function fossil_frights:tasks/easy/tnt_test/explode/particles1 1t append
schedule function fossil_frights:tasks/easy/tnt_test/explode/particles2 3t append
schedule function fossil_frights:tasks/easy/tnt_test/explode/particles1 5t append
schedule function fossil_frights:tasks/easy/tnt_test/explode/particles2 7t append
schedule function fossil_frights:tasks/easy/tnt_test/explode/particles1 9t append
schedule function fossil_frights:tasks/easy/tnt_test/explode/particles2 11t append
