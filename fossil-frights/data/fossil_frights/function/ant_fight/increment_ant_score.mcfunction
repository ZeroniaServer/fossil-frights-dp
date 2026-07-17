scoreboard players add @s ff_ant_score 1
scoreboard players add @s ff_ant_combo 1

execute store result score @s ff_ant_combo_shown_until_timestamp run time query gametime
scoreboard players add @s ff_ant_combo_shown_until_timestamp 20

return 1
