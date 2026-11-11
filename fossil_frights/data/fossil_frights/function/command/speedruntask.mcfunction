execute if score @s speedruntask matches -1 run function fossil_frights:command/speedruntask/none
execute if score @s speedruntask matches 1 run function fossil_frights:command/speedruntask/chimney_sweep
execute if score @s speedruntask matches 2 run function fossil_frights:command/speedruntask/close_clam
execute if score @s speedruntask matches 3 run function fossil_frights:command/speedruntask/lock_register
execute if score @s speedruntask matches 4 run function fossil_frights:command/speedruntask/polish_bell
execute if score @s speedruntask matches 5 run function fossil_frights:command/speedruntask/toilet_clog
execute if score @s speedruntask matches 6 run function fossil_frights:command/speedruntask/sit_on_lap
execute if score @s speedruntask matches 7 run function fossil_frights:command/speedruntask/sweep_popcorn
execute unless score @s speedruntask matches -1 unless score @s speedruntask matches 1..7 run function fossil_frights:command/speedruntask/usage
