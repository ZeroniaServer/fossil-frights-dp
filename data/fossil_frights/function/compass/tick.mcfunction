scoreboard players remove $compass_marker_refresh ff_compass 1
execute if score $compass_marker_refresh ff_compass matches ..0 run scoreboard players operation $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:compass/markers/sync
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:compass/particles/tasks
