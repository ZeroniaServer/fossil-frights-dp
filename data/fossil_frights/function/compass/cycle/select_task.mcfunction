scoreboard players set @s ff_compass_found 1
$execute as @e[type=minecraft:marker,tag=ff_task_compass_target,tag=$(tag),limit=1] run function fossil_frights:compass/cycle/set_selected_target {label:"$(label)",color:"$(color)",model:"$(model)"}
