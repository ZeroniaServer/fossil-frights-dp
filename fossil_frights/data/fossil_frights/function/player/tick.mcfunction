scoreboard players add @s ff_leave_game 0
scoreboard players add @s ff_join_cooldown 0
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run tag @s add ff_login_initial
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run function fossil_frights:player/login
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
tag @s remove ff_login_initial
execute unless score @s ff_leave_game = @s ff_leave_game_seen run function fossil_frights:player/login
execute unless score @s ff_leave_game = @s ff_leave_game_seen run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
tag @s remove ff_rejoin_restored
execute unless score @s ff_active_uuid_0 matches -2147483648..2147483647 run tag @s add ff_uuid_cache_repair
execute if entity @s[tag=ff_uuid_cache_repair] run data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute if entity @s[tag=ff_uuid_cache_repair] store result score @s ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute if entity @s[tag=ff_uuid_cache_repair] store result score @s ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute if entity @s[tag=ff_uuid_cache_repair] store result score @s ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute if entity @s[tag=ff_uuid_cache_repair] store result score @s ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
execute if entity @s[tag=ff_uuid_cache_repair] run data remove storage fossil_frights:nbt uuid
tag @s remove ff_uuid_cache_repair
scoreboard players enable @s ff_queue_start
scoreboard players enable @s start
scoreboard players enable @s leave
scoreboard players enable @s spectate
scoreboard players enable @s stats
scoreboard players enable @s invite
scoreboard players enable @s tutorial
scoreboard players enable @s info
scoreboard players enable @s party
scoreboard players enable @s heists
scoreboard players enable @s challenge
scoreboard players enable @s antfight
scoreboard players enable @s sulfurstriker
scoreboard players enable @s templerun
scoreboard players enable @s parkour
scoreboard players enable @s join_guard
scoreboard players enable @s join_thief
scoreboard players enable @s spawn
scoreboard players enable @s speedruntask
scoreboard players enable @s ff_invite_accept
execute if score @s ff_settings_confirm matches 1 run function fossil_frights:game/start_room/settings/gamemode/frights/apply
execute if score @s ff_settings_confirm matches 2 run function fossil_frights:game/start_room/settings/gamemode/party/request
execute if score @s ff_settings_confirm matches 3 run function fossil_frights:game/start_room/settings/gamemode/heists/request
execute if score @s ff_settings_confirm matches 4 run function fossil_frights:game/start_room/settings/randomizer/enable
execute if score @s ff_settings_confirm matches 5 run function fossil_frights:game/start_room/settings/gamemode/party/apply
execute if score @s ff_settings_confirm matches 6 run function fossil_frights:game/start_room/settings/gamemode/heists/apply
execute if score @s ff_settings_confirm matches 7 run function fossil_frights:game/start_room/settings/gamemode/frights/click
execute if score @s ff_settings_confirm matches 8 run function fossil_frights:game/start_room/settings/music/click
execute if score @s ff_settings_confirm matches 9 run function fossil_frights:game/start_room/settings/spectators/click
execute if score @s ff_settings_confirm matches 10 run function fossil_frights:game/start_room/settings/chat/click
execute if score @s ff_settings_confirm matches 11 run function fossil_frights:game/start_room/settings/speedrun/click
execute if score @s ff_settings_confirm matches 12 run function fossil_frights:game/start_room/settings/randomizer/click
execute if score @s ff_settings_confirm matches 1.. run scoreboard players set @s ff_settings_confirm 0
scoreboard players add @s ff_msg_cooldown 0
scoreboard players add @s ff_settings_mode_cooldown 0
execute if score @s ff_settings_mode_cooldown matches 1.. run scoreboard players remove @s ff_settings_mode_cooldown 1
execute if score @s ff_msg_cooldown matches 1.. run scoreboard players remove @s ff_msg_cooldown 1
function fossil_frights:items/other/confetti_cannon/player_tick
execute if entity @s[tag=ff_hoverboard_restore_pending] run function fossil_frights:items/hoverboard/durability/restore
function fossil_frights:items/hoverboard/durability/sync_damage
execute if entity @s[tag=ff_hoverboard_active] run function fossil_frights:items/hoverboard/player_tick
execute if entity @s[tag=ff_hoverboard_active,gamemode=!creative] run function fossil_frights:items/hoverboard/durability/durability_tick
function fossil_frights:items/hoverboard/durability/sync_damage
execute if entity @s[tag=ff_hoverboard_active] run function fossil_frights:items/hoverboard/visibility
execute unless entity @s[tag=ff_hoverboard_active] if items entity @s weapon.* *[custom_data~{itemID:"hoverboard",ff_invisible:true}] run function fossil_frights:items/hoverboard/visibility
execute unless entity @s[gamemode=spectator] run function fossil_frights:player/double_jump/tick
execute if entity @s[gamemode=spectator,team=!ff_dev_mode] run function fossil_frights:admin/spectator/tick
execute if predicate fossil_frights:player/is_playing run tag @s remove ff_plushie_restore_pending
execute if predicate fossil_frights:player/is_playing run tag @s remove ff_plushie_restore_queued
execute if predicate fossil_frights:player/is_playing run function fossil_frights:items/plushies/clear_items
execute unless predicate fossil_frights:player/is_playing if entity @s[tag=ff_plushie_restore_pending] run function fossil_frights:items/plushies/restore
tag @s[tag=ff_plushie_restore_pending] remove ff_plushie_restore_pending
tag @s[tag=ff_plushie_restore_queued] add ff_plushie_restore_pending
tag @s[tag=ff_plushie_restore_queued] remove ff_plushie_restore_queued
execute if score @s invite matches 1.. run function fossil_frights:command/invite
execute if score @s invite matches 1.. run scoreboard players enable @s invite
execute if score @s invite matches 1.. run scoreboard players set @s invite 0
execute if score @s ff_invite_sel matches 1.. run function fossil_frights:game/start_room/settings/duos/gui/select
execute if score @s ff_invite_sel matches 1.. run scoreboard players enable @s ff_invite_sel
execute if score @s ff_invite_sel matches 1.. run scoreboard players set @s ff_invite_sel 0
execute if score @s ff_invite_accept matches 1.. run function fossil_frights:join/duos/accept_invite
execute if score @s ff_invite_accept matches 1.. run scoreboard players enable @s ff_invite_accept
execute if score @s ff_invite_accept matches 1.. run scoreboard players set @s ff_invite_accept 0
execute if score @s ff_queue_start matches 1.. run function fossil_frights:join/queue/handle_start_click
execute if score @s start matches 1.. run function fossil_frights:command/start
execute if score @s start matches 1.. run scoreboard players enable @s start
execute if score @s start matches 1.. run scoreboard players set @s start 0
execute if score @s leave matches 1.. run function fossil_frights:command/leave
execute if score @s leave matches 1.. run scoreboard players enable @s leave
execute if score @s leave matches 1.. run scoreboard players set @s leave 0
execute if score @s spectate matches 1.. run function fossil_frights:command/spectate
execute if score @s spectate matches 1.. run scoreboard players enable @s spectate
execute if score @s spectate matches 1.. run scoreboard players set @s spectate 0
execute if score @s stats matches 1.. run function fossil_frights:command/stats
execute if score @s stats matches 1.. run scoreboard players enable @s stats
execute if score @s stats matches 1.. run scoreboard players set @s stats 0
execute if score @s tutorial matches 1.. run function fossil_frights:command/tutorial
execute if score @s tutorial matches 1.. run scoreboard players enable @s tutorial
execute if score @s tutorial matches 1.. run scoreboard players set @s tutorial 0
execute if score @s info matches 1.. run function fossil_frights:command/info
execute if score @s info matches 1.. run scoreboard players enable @s info
execute if score @s info matches 1.. run scoreboard players set @s info 0
execute if score @s party matches 1.. run function fossil_frights:command/party
execute if score @s party matches 1.. run scoreboard players enable @s party
execute if score @s party matches 1.. run scoreboard players set @s party 0
execute if score @s heists matches 1.. run function fossil_frights:command/heists
execute if score @s heists matches 1.. run scoreboard players enable @s heists
execute if score @s heists matches 1.. run scoreboard players set @s heists 0
execute if score @s challenge matches ..-1 run function fossil_frights:command/challenge
execute if score @s challenge matches ..-1 run scoreboard players enable @s challenge
execute if score @s challenge matches ..-1 run scoreboard players set @s challenge 0
execute if score @s challenge matches 1.. run function fossil_frights:command/challenge
execute if score @s challenge matches 1.. run scoreboard players enable @s challenge
execute if score @s challenge matches 1.. run scoreboard players set @s challenge 0
execute if score @s antfight matches 1.. run function fossil_frights:command/antfight
execute if score @s antfight matches 1.. run scoreboard players enable @s antfight
execute if score @s antfight matches 1.. run scoreboard players set @s antfight 0
execute if score @s sulfurstriker matches 1.. run function fossil_frights:command/sulfurstriker
execute if score @s sulfurstriker matches 1.. run scoreboard players enable @s sulfurstriker
execute if score @s sulfurstriker matches 1.. run scoreboard players set @s sulfurstriker 0
execute if score @s templerun matches 1.. run function fossil_frights:command/templerun
execute if score @s templerun matches 1.. run scoreboard players enable @s templerun
execute if score @s templerun matches 1.. run scoreboard players set @s templerun 0
execute if score @s parkour matches 1.. run function fossil_frights:command/parkour
execute if score @s parkour matches 1.. run scoreboard players enable @s parkour
execute if score @s parkour matches 1.. run scoreboard players set @s parkour 0
execute if score @s join_guard matches 1.. run function fossil_frights:command/join/guard
execute if score @s join_guard matches 1.. run scoreboard players enable @s join_guard
execute if score @s join_guard matches 1.. run scoreboard players set @s join_guard 0
execute if score @s join_thief matches 1.. run function fossil_frights:command/join/thief
execute if score @s join_thief matches 1.. run scoreboard players enable @s join_thief
execute if score @s join_thief matches 1.. run scoreboard players set @s join_thief 0
execute if score @s spawn matches 1.. run function fossil_frights:command/spawn
execute if score @s spawn matches 1.. run scoreboard players enable @s spawn
execute if score @s spawn matches 1.. run scoreboard players set @s spawn 0
execute if score @s speedruntask matches ..-1 run function fossil_frights:command/speedruntask
execute if score @s speedruntask matches 1.. run function fossil_frights:command/speedruntask
execute if score @s speedruntask matches ..-1 run scoreboard players enable @s speedruntask
execute if score @s speedruntask matches 1.. run scoreboard players enable @s speedruntask
execute if score @s speedruntask matches ..-1 run scoreboard players set @s speedruntask 0
execute if score @s speedruntask matches 1.. run scoreboard players set @s speedruntask 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/tick
execute unless score @s ff_deaths = @s ff_deaths_seen unless entity @s[nbt={Health:0.0f}] if entity @s[gamemode=!spectator] if score $victory_complete ff_game_state matches 1 if predicate fossil_frights:player/is_playing run return run function fossil_frights:command/leave
execute unless score @s ff_deaths = @s ff_deaths_seen unless entity @s[nbt={Health:0.0f}] if entity @s[gamemode=!spectator] if predicate fossil_frights:game_state/game_running if predicate fossil_frights:player/is_playing run function fossil_frights:player/death_active
execute unless score @s ff_deaths = @s ff_deaths_seen unless entity @s[nbt={Health:0.0f}] if entity @s[gamemode=!spectator] unless predicate fossil_frights:game_state/game_running run function fossil_frights:player/respawn_lobby
execute unless score @s ff_deaths = @s ff_deaths_seen unless entity @s[nbt={Health:0.0f}] if entity @s[gamemode=!spectator] if predicate fossil_frights:game_state/game_running unless predicate fossil_frights:player/is_playing run function fossil_frights:player/respawn_lobby
execute unless entity @s[nbt={Health:0.0f}] unless score @s ff_deaths = @s ff_deaths_seen run scoreboard players operation @s ff_deaths_seen = @s ff_deaths
execute if entity @s[tag=ff_damage_guard] if predicate fossil_frights:game_state/game_running if entity @s[team=ff_guard,gamemode=!spectator] run function fossil_frights:player/protection_disable
execute if entity @s[gamemode=!spectator,tag=!ff_damage_guard] unless predicate fossil_frights:game_state/game_running run function fossil_frights:player/protection_enable
execute if entity @s[gamemode=!spectator,tag=!ff_damage_guard] if predicate fossil_frights:game_state/game_running unless predicate fossil_frights:player/is_playing run function fossil_frights:player/protection_enable
function fossil_frights:player/effects/tick
execute if entity @s[team=ff_guard,gamemode=!spectator] if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:items/heists/ice_cannon/player_tick
execute if entity @s[team=ff_guard,gamemode=!spectator] if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:items/heists/trap/player_tick
execute if entity @s[team=ff_guard,gamemode=!spectator] if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 run function fossil_frights:game/heists/guard_tick
execute if entity @s[team=ff_thief,gamemode=!spectator] if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:game/heists/thief_tick
function fossil_frights:lobby_games/parkour/player_tick
function fossil_frights:lobby_games/temple_run/player_tick
execute store result score #gametime ff_ant_combo_shown_until_timestamp run time query gametime
function fossil_frights:lobby_games/ant_fight/player_tick
function fossil_frights:lobby_games/sulfur_strikers/player_tick
function fossil_frights:advancements/checks/reach_the_sun
execute if entity @s[tag=ff_camera_remote_active,gamemode=!spectator] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=ff_forced_spectate,gamemode=!spectator] run function fossil_frights:cameras/forced_spectate_exit
execute if entity @s[tag=ff_camera_lights_disabled_overlay,tag=!ff_forced_spectate] run function fossil_frights:cameras/lights_disabled/hide
execute if entity @s[tag=ff_forced_spectate,gamemode=spectator] run function fossil_frights:cameras/camera_tick
execute if entity @s[tag=ff_camera_remote_active,gamemode=spectator] at @s if predicate fossil_frights:player/input/sneak run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=ff_forced_spectate,gamemode=spectator] at @s if predicate fossil_frights:player/input/sneak run function fossil_frights:cameras/forced_spectate_exit
execute if entity @s[team=ff_guard] if predicate fossil_frights:game_state/game_running run function fossil_frights:frights/check_radius
execute if entity @s[team=ff_guard] if predicate fossil_frights:game_state/game_running unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:tasks/hard/feed_the_bats/player_tick
execute if entity @s[gamemode=!spectator] if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:player/is_playing run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/player_tick
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:tasks/hard/basketball_dance/player_tick
tag @s add ff_dna_holder
execute unless items entity @s weapon.* *[custom_data~{ff_dna:true}] run tag @s remove ff_dna_holder
execute if entity @s[tag=ff_dna_holder] run function fossil_frights:tasks/final/dna/hover_check
scoreboard players add @s ff_key_cooldown 0
advancement revoke @s from fossil_frights:detection_root
scoreboard players set @s ff_lock_look 0
scoreboard players set @s ff_scan 6
execute if score @s ff_key_cooldown matches 0 if items entity @s weapon.* *[custom_data~{itemID:"key"}] anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:key/lock/raycast_step
attribute @s minecraft:waypoint_transmit_range base set 0
attribute @s[team=ff_lobby,gamemode=!spectator] minecraft:waypoint_receive_range base set 0
attribute @s[predicate=fossil_frights:player/is_playing] minecraft:waypoint_receive_range base set 60000000
attribute @s[gamemode=spectator] minecraft:waypoint_receive_range base set 60000000
execute if entity @s[team=ff_spectator] run effect give @s minecraft:invisibility infinite 0 true
attribute @s[tag=ff_forced_spectate,gamemode=spectator] minecraft:waypoint_receive_range base set 0
attribute @s[tag=ff_camera_remote_active,gamemode=spectator] minecraft:waypoint_receive_range base set 0
execute if predicate fossil_frights:entity/effects/water_breathing run attribute @s minecraft:water_movement_efficiency modifier add fossil_frights:fossil_fizz 0.9 add_value
execute unless predicate fossil_frights:entity/effects/water_breathing run attribute @s minecraft:water_movement_efficiency modifier remove fossil_frights:fossil_fizz
execute if entity @s[team=ff_spectator,gamemode=spectator] run attribute @s minecraft:scale modifier add fossil_frights:hide_spectator_head -1 add_multiplied_total
execute unless entity @s[team=ff_spectator,gamemode=spectator] run attribute @s minecraft:scale modifier remove fossil_frights:hide_spectator_head
