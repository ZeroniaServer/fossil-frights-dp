execute if entity @s[team=ff_dev_mode] run return 0
execute unless score @s ff_top_time matches -2147483648..2147483647 run scoreboard players set @s ff_top_time 0
execute unless score @s ff_top_day matches -2147483648..2147483647 run scoreboard players set @s ff_top_day 0
execute unless score @s ff_run_count matches -2147483648..2147483647 run scoreboard players set @s ff_run_count 0
execute store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1
execute if score @s ff_active_uuid_0 = $lb_pending ff_active_uuid_0 if score @s ff_active_uuid_1 = $lb_pending ff_active_uuid_1 if score @s ff_active_uuid_2 = $lb_pending ff_active_uuid_2 if score @s ff_active_uuid_3 = $lb_pending ff_active_uuid_3 run function fossil_frights:leaderboards/claim_pending_disconnect
team leave @s
tag @s remove ff_active
tag @s remove ff_forced_spectate
tag @s remove ff_in_queue
scoreboard players set @s ff_queue_order 0
scoreboard players set @s ff_queue_prompt_time 0
scoreboard players set @s ff_queue_start 0
scoreboard players set @s ff_queue_start_token 0
scoreboard players set @s ff_cmd_start 0
scoreboard players set @s ff_cmd_leave 0
scoreboard players set @s ff_cmd_spectate 0
scoreboard players set @s ff_cmd_stats 0
scoreboard players enable @s ff_queue_start
scoreboard players enable @s ff_cmd_start
scoreboard players enable @s ff_cmd_leave
scoreboard players enable @s ff_cmd_spectate
scoreboard players enable @s ff_cmd_stats
scoreboard players set @s ff_cmd_invite 0
scoreboard players enable @s ff_cmd_invite
scoreboard players set @s ff_invite_sel 0
scoreboard players enable @s ff_invite_sel
clear @s
item replace entity @s armor.head with air
tp @s 0 80 0 0 0
spawnpoint @s 0 80 0
gamemode adventure @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
effect give @s minecraft:instant_health 100 0 true
function fossil_frights:tasks/final/plushies/restore
function fossil_frights:leaderboards/sync_entry
function fossil_frights:leaderboards/display/refresh
