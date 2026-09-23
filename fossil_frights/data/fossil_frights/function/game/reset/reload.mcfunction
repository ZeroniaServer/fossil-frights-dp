function fossil_frights:game/rejoin/cleanup/all
function fossil_frights:animations/credits/stop
tag @a add ff_skip_plushie_restore
execute as @a run function fossil_frights:lobby_games/parkour/reset_player
execute as @a run function fossil_frights:lobby_games/temple_run/reset_player
execute as @a run function fossil_frights:player/reset_attributes
execute as @a run function fossil_frights:player/reset_effects
execute as @a[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/end
execute as @a[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
tag @a[scores={ff_tp_action=14}] remove ff_fade_tp_active
tag @a remove ff_skip_plushie_restore
execute as @a run function fossil_frights:items/plushies/restore
kill @e[type=minecraft:text_display,tag=ff_tutorial_camera]
function fossil_frights:join/join_pads/reset
tag @a remove ff_map_claimed
tag @a remove ff_map_auto_given
scoreboard players set $queue_start_token ff_queue_start_token 0
scoreboard players set $queue_notify_lock ff_game_state 0
scoreboard players set $join_pad_mode ff_game_state 0
scoreboard players set $game_start_spawn_mode ff_game_state 0
scoreboard players set $lobby_displays_ready ff_game_state 0
scoreboard players set @a stats 0
scoreboard players enable @a stats
scoreboard players set @a tutorial 0
scoreboard players enable @a tutorial
scoreboard players set @a info 0
scoreboard players enable @a info
scoreboard players set @a party 0
scoreboard players enable @a party
scoreboard players set @a heists 0
scoreboard players enable @a heists
scoreboard players set @a join_guard 0
scoreboard players enable @a join_guard
scoreboard players set @a join_thief 0
scoreboard players enable @a join_thief
scoreboard players set @a spawn 0
scoreboard players enable @a spawn
scoreboard players set @a invite 0
scoreboard players enable @a invite
scoreboard players set @a ff_invite_sel 0
scoreboard players enable @a ff_invite_sel
scoreboard players set @a ff_invite_accept 0
scoreboard players enable @a ff_invite_accept
function fossil_frights:game/start_room/settings/board/refresh
function fossil_frights:leaderboards/display/refresh
function fossil_frights:animations/dinocoin/crane/hide_parkour_route
function fossil_frights:game/reset
