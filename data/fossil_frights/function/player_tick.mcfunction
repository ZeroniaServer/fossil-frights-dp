execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run function fossil_frights:player_login
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
execute unless score @s ff_leave_game = @s ff_leave_game_seen run function fossil_frights:player_login
execute unless score @s ff_leave_game = @s ff_leave_game_seen run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
execute store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1
scoreboard players enable @s ff_queue_start
scoreboard players enable @s ff_cmd_start
scoreboard players enable @s ff_cmd_leave
scoreboard players enable @s ff_cmd_spectate
scoreboard players enable @s ff_cmd_stats
scoreboard players enable @s ff_cmd_invite
execute if score @s ff_cmd_invite matches 1.. run function fossil_frights:command/invite
execute if score @s ff_cmd_invite matches 1.. run scoreboard players enable @s ff_cmd_invite
execute if score @s ff_cmd_invite matches 1.. run scoreboard players set @s ff_cmd_invite 0
execute if score @s ff_invite_sel matches 1.. run function fossil_frights:game/settings/multiplayer/gui/select
execute if score @s ff_invite_sel matches 1.. run scoreboard players enable @s ff_invite_sel
execute if score @s ff_invite_sel matches 1.. run scoreboard players set @s ff_invite_sel 0
execute if score @s ff_queue_start matches 1.. run function fossil_frights:join/handle_start_click
execute if score @s ff_cmd_start matches 1.. run function fossil_frights:command/start
execute if score @s ff_cmd_start matches 1.. run scoreboard players enable @s ff_cmd_start
execute if score @s ff_cmd_start matches 1.. run scoreboard players set @s ff_cmd_start 0
execute if score @s ff_cmd_leave matches 1.. run function fossil_frights:command/leave
execute if score @s ff_cmd_leave matches 1.. run scoreboard players enable @s ff_cmd_leave
execute if score @s ff_cmd_leave matches 1.. run scoreboard players set @s ff_cmd_leave 0
execute if score @s ff_cmd_spectate matches 1.. run function fossil_frights:command/spectate
execute if score @s ff_cmd_spectate matches 1.. run scoreboard players enable @s ff_cmd_spectate
execute if score @s ff_cmd_spectate matches 1.. run scoreboard players set @s ff_cmd_spectate 0
execute if score @s ff_cmd_stats matches 1.. run function fossil_frights:command/stats
execute if score @s ff_cmd_stats matches 1.. run scoreboard players enable @s ff_cmd_stats
execute if score @s ff_cmd_stats matches 1.. run scoreboard players set @s ff_cmd_stats 0
execute unless score @s ff_deaths = @s ff_deaths_seen if entity @s[gamemode=!spectator] if score $game_running ff_game_state matches 1 if entity @s[tag=ff_active] run function fossil_frights:player/respawn_active
execute unless score @s ff_deaths = @s ff_deaths_seen if entity @s[gamemode=!spectator] unless score $game_running ff_game_state matches 1 run function fossil_frights:player/respawn_lobby
execute unless score @s ff_deaths = @s ff_deaths_seen if entity @s[gamemode=!spectator] if score $game_running ff_game_state matches 1 unless entity @s[tag=ff_active] run function fossil_frights:player/respawn_lobby
execute unless score @s ff_deaths = @s ff_deaths_seen run scoreboard players operation @s ff_deaths_seen = @s ff_deaths
execute if entity @s[tag=ff_damage_guard] if score $game_running ff_game_state matches 1 if entity @s[tag=ff_active,gamemode=!spectator] run function fossil_frights:player/protection_disable
execute if entity @s[gamemode=!spectator,tag=!ff_damage_guard] unless score $game_running ff_game_state matches 1 run function fossil_frights:player/protection_enable
execute if entity @s[gamemode=!spectator,tag=!ff_damage_guard] if score $game_running ff_game_state matches 1 unless entity @s[tag=ff_active] run function fossil_frights:player/protection_enable
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run function fossil_frights:player/respawn_lobby
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run function fossil_frights:player/respawn_lobby
execute if entity @s[tag=ff_active,gamemode=!spectator] if score $game_running ff_game_state matches 1 unless entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run function fossil_frights:player/respawn_active
execute run function fossil_frights:parkour/player_tick
execute run function fossil_frights:ant_fight/player_tick
execute if entity @s[tag=ff_forced_spectate,gamemode=!spectator] run function fossil_frights:tasks/easy/check_security/forced_spectate_exit
execute if entity @s[tag=ff_forced_spectate,gamemode=spectator] at @s unless entity @e[type=!minecraft:player,distance=..0.1,limit=1] run function fossil_frights:tasks/easy/check_security/forced_spectate_exit
execute if entity @s[tag=ff_active] if score $game_running ff_game_state matches 1 run function fossil_frights:frights/check_radius
execute if entity @s[tag=ff_active] run function fossil_frights:key/prevent_drop
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{ff_dna:1b}}}} run function fossil_frights:tasks/final/dna/hover_check
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{ff_dna:1b}}}} unless score @s ff_dna_use = @s ff_dna_use_seen run function fossil_frights:tasks/final/dna/use
scoreboard players operation @s ff_dna_use_seen = @s ff_dna_use
scoreboard players add @s ff_key_cooldown 0
advancement revoke @s only fossil_frights:lock_click
advancement revoke @s only fossil_frights:multiplayer_click
advancement revoke @s only fossil_frights:dna_click
advancement revoke @s only fossil_frights:queue_punch
scoreboard players set @s ff_lock_look 0
scoreboard players set @s ff_scan 16
execute if score @s ff_key_cooldown matches 0 if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{ff_parkour_restart:1b}}}} anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:raycast_step
