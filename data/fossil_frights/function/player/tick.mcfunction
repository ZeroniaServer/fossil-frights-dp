execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run tag @s add ff_login_initial
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run function fossil_frights:player/login
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run tag @s remove ff_login_initial
execute unless score @s ff_leave_game = @s ff_leave_game_seen run function fossil_frights:player/login
execute unless score @s ff_leave_game = @s ff_leave_game_seen run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
scoreboard players enable @s ff_queue_start
scoreboard players enable @s ff_cmd_start
scoreboard players enable @s ff_cmd_leave
scoreboard players enable @s ff_cmd_spectate
scoreboard players enable @s ff_cmd_stats
scoreboard players enable @s ff_cmd_invite
scoreboard players enable @s ff_cmd_tutorial
scoreboard players enable @s ff_cmd_info
scoreboard players enable @s ff_cmd_party
scoreboard players enable @s ff_cmd_heists
scoreboard players enable @s ff_cmd_join_guard
scoreboard players enable @s ff_cmd_join_thief
scoreboard players enable @s ff_cmd_spawn
scoreboard players enable @s ff_invite_accept
scoreboard players add @s ff_msg_cooldown 0
execute if score @s ff_msg_cooldown matches 1.. run scoreboard players remove @s ff_msg_cooldown 1
function fossil_frights:items/other/confetti_cannon/player_tick
execute if entity @s[tag=ff_plushie_restore_pending] run function fossil_frights:tasks/final/plushies/restore
tag @s[tag=ff_plushie_restore_pending] remove ff_plushie_restore_pending
tag @s[tag=ff_plushie_restore_queued] add ff_plushie_restore_pending
tag @s[tag=ff_plushie_restore_queued] remove ff_plushie_restore_queued
execute if score @s ff_cmd_invite matches 1.. run function fossil_frights:command/invite
execute if score @s ff_cmd_invite matches 1.. run scoreboard players enable @s ff_cmd_invite
execute if score @s ff_cmd_invite matches 1.. run scoreboard players set @s ff_cmd_invite 0
execute if score @s ff_invite_sel matches 1.. run function fossil_frights:game/settings/multiplayer/gui/select
execute if score @s ff_invite_sel matches 1.. run scoreboard players enable @s ff_invite_sel
execute if score @s ff_invite_sel matches 1.. run scoreboard players set @s ff_invite_sel 0
execute if score @s ff_invite_accept matches 1.. run function fossil_frights:join/multiplayer/accept_invite
execute if score @s ff_invite_accept matches 1.. run scoreboard players enable @s ff_invite_accept
execute if score @s ff_invite_accept matches 1.. run scoreboard players set @s ff_invite_accept 0
execute if score @s ff_queue_start matches 1.. run function fossil_frights:join/queue/handle_start_click
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
execute if score @s ff_cmd_tutorial matches 1.. run function fossil_frights:command/tutorial
execute if score @s ff_cmd_tutorial matches 1.. run scoreboard players enable @s ff_cmd_tutorial
execute if score @s ff_cmd_tutorial matches 1.. run scoreboard players set @s ff_cmd_tutorial 0
execute if score @s ff_cmd_info matches 1.. run function fossil_frights:command/info
execute if score @s ff_cmd_info matches 1.. run scoreboard players enable @s ff_cmd_info
execute if score @s ff_cmd_info matches 1.. run scoreboard players set @s ff_cmd_info 0
execute if score @s ff_cmd_party matches 1.. run function fossil_frights:command/party
execute if score @s ff_cmd_party matches 1.. run scoreboard players enable @s ff_cmd_party
execute if score @s ff_cmd_party matches 1.. run scoreboard players set @s ff_cmd_party 0
execute if score @s ff_cmd_heists matches 1.. run function fossil_frights:command/heists
execute if score @s ff_cmd_heists matches 1.. run scoreboard players enable @s ff_cmd_heists
execute if score @s ff_cmd_heists matches 1.. run scoreboard players set @s ff_cmd_heists 0
execute if score @s ff_cmd_join_guard matches 1.. run function fossil_frights:command/join_guard
execute if score @s ff_cmd_join_guard matches 1.. run scoreboard players enable @s ff_cmd_join_guard
execute if score @s ff_cmd_join_guard matches 1.. run scoreboard players set @s ff_cmd_join_guard 0
execute if score @s ff_cmd_join_thief matches 1.. run function fossil_frights:command/join_thief
execute if score @s ff_cmd_join_thief matches 1.. run scoreboard players enable @s ff_cmd_join_thief
execute if score @s ff_cmd_join_thief matches 1.. run scoreboard players set @s ff_cmd_join_thief 0
execute if score @s ff_cmd_spawn matches 1.. run function fossil_frights:command/spawn
execute if score @s ff_cmd_spawn matches 1.. run scoreboard players enable @s ff_cmd_spawn
execute if score @s ff_cmd_spawn matches 1.. run scoreboard players set @s ff_cmd_spawn 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/tick
execute unless score @s ff_deaths = @s ff_deaths_seen if entity @s[gamemode=!spectator] if score $game_running ff_game_state matches 1 if predicate fossil_frights:player/is_playing run function fossil_frights:player/death_active
execute unless score @s ff_deaths = @s ff_deaths_seen if entity @s[gamemode=!spectator] unless score $game_running ff_game_state matches 1 run function fossil_frights:player/respawn_lobby
execute unless score @s ff_deaths = @s ff_deaths_seen if entity @s[gamemode=!spectator] if score $game_running ff_game_state matches 1 unless predicate fossil_frights:player/is_playing run function fossil_frights:player/respawn_lobby
execute unless score @s ff_deaths = @s ff_deaths_seen run scoreboard players operation @s ff_deaths_seen = @s ff_deaths
execute if entity @s[tag=ff_damage_guard] if score $game_running ff_game_state matches 1 if entity @s[team=ff_guard,gamemode=!spectator] run function fossil_frights:player/protection_disable
execute if entity @s[gamemode=!spectator,tag=!ff_damage_guard] unless score $game_running ff_game_state matches 1 run function fossil_frights:player/protection_enable
execute if entity @s[gamemode=!spectator,tag=!ff_damage_guard] if score $game_running ff_game_state matches 1 unless predicate fossil_frights:player/is_playing run function fossil_frights:player/protection_enable
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless predicate fossil_frights:entity/effects/resistance run function fossil_frights:player/respawn_lobby
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless predicate fossil_frights:entity/effects/saturation run function fossil_frights:player/respawn_lobby
execute if entity @s[team=ff_thief,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 unless predicate fossil_frights:entity/effects/saturation unless score @s ff_heist_regen_lock matches 1.. run function fossil_frights:game/heists/death_thief
execute if entity @s[team=ff_guard,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 unless predicate fossil_frights:entity/effects/saturation run function fossil_frights:game/heists/death_guard
execute if entity @s[team=ff_guard,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:items/heists/ice_cannon/player_tick
execute if entity @s[team=ff_guard,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:items/heists/trap/player_tick
execute if entity @s[team=ff_thief,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 run function fossil_frights:game/heists/thief_tick
execute if entity @s[team=ff_guard,gamemode=!spectator] if score $game_running ff_game_state matches 1 unless score $heist_mode_active ff_game_state matches 1 unless predicate fossil_frights:entity/effects/saturation run function fossil_frights:player/respawn_active
execute run function fossil_frights:parkour/player_tick
execute run function fossil_frights:temple_run/player_tick
execute store result score #gametime ff_ant_combo_shown_until_timestamp run time query gametime
execute run function fossil_frights:ant_fight/player_tick
execute run function fossil_frights:advancements/checks/reach_the_sun
execute if entity @s[tag=ff_camera_remote_active,gamemode=!spectator] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=ff_forced_spectate,gamemode=!spectator] run function fossil_frights:cameras/forced_spectate_exit
execute if entity @s[tag=ff_forced_spectate,gamemode=spectator] run function fossil_frights:cameras/camera_tick
execute if entity @s[tag=ff_camera_remote_active,gamemode=spectator] at @s if predicate fossil_frights:player/input/sneak run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=ff_forced_spectate,gamemode=spectator] at @s if predicate fossil_frights:player/input/sneak run function fossil_frights:cameras/forced_spectate_exit
execute if entity @s[team=ff_guard] if score $game_running ff_game_state matches 1 run function fossil_frights:frights/check_radius
execute if entity @s[team=ff_guard] if score $game_running ff_game_state matches 1 run function fossil_frights:player/glowberry/make_edible
execute if entity @s[team=ff_guard] if score $game_running ff_game_state matches 1 run function fossil_frights:tasks/hard/feed_the_bats/player_tick
execute if entity @s[team=ff_guard] if score $game_running ff_game_state matches 1 run function fossil_frights:tasks/hard/basketball_dance/player_tick
execute if items entity @s weapon.mainhand minecraft:amethyst_shard[custom_data~{ff_dna:1b}] run function fossil_frights:tasks/final/dna/hover_check
scoreboard players add @s ff_key_cooldown 0
advancement revoke @s only fossil_frights:lock_click
advancement revoke @s only fossil_frights:multiplayer_click
advancement revoke @s only fossil_frights:dna_click
advancement revoke @s only fossil_frights:swat_flies_click
advancement revoke @s only fossil_frights:check_security_click
advancement revoke @s only fossil_frights:lock_register_click
advancement revoke @s only fossil_frights:polish_bell_click
advancement revoke @s only fossil_frights:fix_cracked_egg_click
advancement revoke @s only fossil_frights:fix_mars_click
advancement revoke @s only fossil_frights:sweep_popcorn_click
advancement revoke @s only fossil_frights:dig_sand_click
advancement revoke @s only fossil_frights:credit_reel_click
advancement revoke @s only fossil_frights:feed_the_fish_click
advancement revoke @s only fossil_frights:popcorn_buckets_click
advancement revoke @s only fossil_frights:ancient_portal_click
advancement revoke @s only fossil_frights:coffee_refill_click
advancement revoke @s only fossil_frights:feed_parrot_click
advancement revoke @s only fossil_frights:feed_the_plants_click
advancement revoke @s only fossil_frights:fix_sculker_click
advancement revoke @s only fossil_frights:refill_coffee_click
advancement revoke @s only fossil_frights:refill_ice_click
advancement revoke @s only fossil_frights:replenish_soap_click
advancement revoke @s only fossil_frights:restock_plushies_click
advancement revoke @s only fossil_frights:revitalize_coral_click
advancement revoke @s only fossil_frights:shark_bait_click
advancement revoke @s only fossil_frights:sponge_up_spill_click
advancement revoke @s only fossil_frights:anvil_click
advancement revoke @s only fossil_frights:crane_payment_click
advancement revoke @s only fossil_frights:sarcophagus_payment_click
advancement revoke @s only fossil_frights:start_room_glass_box_click
advancement revoke @s only fossil_frights:heist_waiting_text_click
advancement revoke @s only fossil_frights:return_the_key_pickup_click
advancement revoke @s only fossil_frights:return_the_key_return_click
advancement revoke @s only fossil_frights:basketball_dance_jukebox_click
advancement revoke @s only fossil_frights:hoveraptor_click
advancement revoke @s only fossil_frights:final_task_centrifuge_click
advancement revoke @s only fossil_frights:final_task_dna_analyzer_click
advancement revoke @s only fossil_frights:queue_punch
advancement revoke @s only fossil_frights:ice_frozen_hurt
advancement revoke @s only fossil_frights:camera_remote_consumed
advancement revoke @s only fossil_frights:hazard_cookie_consumed
advancement revoke @s only fossil_frights:camera_remote_dummy_punch
scoreboard players set @s ff_lock_look 0
scoreboard players set @s ff_scan 16
execute if score @s ff_key_cooldown matches 0 if items entity @s weapon.mainhand *[custom_data~{itemID:"key"}] anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:key/lock/raycast_step
attribute @s minecraft:waypoint_transmit_range base set 0
attribute @s[team=ff_lobby,gamemode=!spectator] minecraft:waypoint_receive_range base set 0
attribute @s[predicate=fossil_frights:player/is_playing] minecraft:waypoint_receive_range base set 60000000
attribute @s[gamemode=spectator] minecraft:waypoint_receive_range base set 60000000
attribute @s[tag=ff_forced_spectate,gamemode=spectator] minecraft:waypoint_receive_range base set 0
attribute @s[tag=ff_camera_remote_active,gamemode=spectator] minecraft:waypoint_receive_range base set 0
execute if predicate fossil_frights:entity/effects/water_breathing run attribute @s minecraft:water_movement_efficiency modifier add fossil_frights:fossil_fizz 0.9 add_value
execute unless predicate fossil_frights:entity/effects/water_breathing run attribute @s minecraft:water_movement_efficiency modifier remove fossil_frights:fossil_fizz
