scoreboard players add @s ff_ant_score 1
scoreboard players add @s ff_ant_combo 1

execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.9 1.6
scoreboard players display numberformat #ant_fight_attacker_name ff_dummy fixed {selector:"@s"}

execute store result score @s ff_ant_combo_shown_until_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",20]}

return 1
