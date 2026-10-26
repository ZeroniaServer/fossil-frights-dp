$data modify storage fossil_frights:rock args set value {num:$(num)}
execute store result storage fossil_frights:rock args.time int 1 run random value 1..20
function fossil_frights:tasks/easy/tnt_test/explode/schedule_rock_macro with storage fossil_frights:rock args
scoreboard players add #rocks_spawned ff_dummy 1
