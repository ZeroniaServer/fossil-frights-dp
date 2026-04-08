function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:bossbar/clear
function fossil_frights:animations/defeat/stop
function fossil_frights:animations/door/open
function fossil_frights:animations/crane/reset
function fossil_frights:frights/sniffer/reset
function fossil_frights:frights/bats/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:animations/velociraptor_skull/reset_rotation
execute as @a run function fossil_frights:parkour/reset_player
function fossil_frights:join/reset
scoreboard players set @a ff_fright_timer 0
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $crane_rat_cooldown ff_game_state 0
scoreboard players set $queue_start_token ff_queue_start_token 0
scoreboard players set $queue_notify_lock ff_game_state 0
scoreboard players set $join_pad_mode ff_game_state 1
scoreboard players set @a ff_cmd_stats 0
scoreboard players enable @a ff_cmd_stats
scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:game/settings/toggle_spectators/reset
function fossil_frights:game/settings/setting2/reset
function fossil_frights:game/settings/setting3/reset
execute if entity @a run function fossil_frights:leaderboards/display/rebuild
