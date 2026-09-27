tag @s remove ff_tutorial_command_blocked
execute if score @s ff_queue_start matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s start matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s spectate matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s stats matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s invite matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s tutorial matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s info matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s party matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s heists matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s challenge matches ..-1 run tag @s add ff_tutorial_command_blocked
execute if score @s challenge matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s antfight matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s sulfurstriker matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s templerun matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s parkour matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s join_guard matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s join_thief matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s spawn matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s speedruntask matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s ff_invite_accept matches 1.. run tag @s add ff_tutorial_command_blocked
execute if score @s ff_invite_sel matches 1.. run tag @s add ff_tutorial_command_blocked
execute if entity @s[tag=ff_tutorial_command_blocked] run function fossil_frights:messages/error/cannot_spawn_while_tutorial
scoreboard players set @s ff_queue_start 0
scoreboard players set @s start 0
scoreboard players set @s spectate 0
scoreboard players set @s stats 0
scoreboard players set @s invite 0
scoreboard players set @s tutorial 0
scoreboard players set @s info 0
scoreboard players set @s party 0
scoreboard players set @s heists 0
scoreboard players set @s challenge 0
scoreboard players set @s antfight 0
scoreboard players set @s sulfurstriker 0
scoreboard players set @s templerun 0
scoreboard players set @s parkour 0
scoreboard players set @s join_guard 0
scoreboard players set @s join_thief 0
scoreboard players set @s spawn 0
scoreboard players set @s speedruntask 0
scoreboard players set @s ff_invite_accept 0
scoreboard players set @s ff_invite_sel 0
tag @s remove ff_tutorial_command_blocked
