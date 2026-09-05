execute if score @s speedruntask matches -1 run function fossil_frights:command/speedruntask/none
execute if score @s speedruntask matches 2 run function fossil_frights:command/speedruntask/check_security
execute if score @s speedruntask matches 3 run function fossil_frights:command/speedruntask/check_ankylo
execute if score @s speedruntask matches 4 run function fossil_frights:command/speedruntask/toilet_clog
execute if score @s speedruntask matches 5 run function fossil_frights:command/speedruntask/polish_bell
execute if score @s speedruntask matches 6 run function fossil_frights:command/speedruntask/lock_register
execute if score @s speedruntask matches 7 run function fossil_frights:command/speedruntask/reset_salt_level
execute unless score @s speedruntask matches -1 unless score @s speedruntask matches 2..7 run function fossil_frights:command/speedruntask/usage
