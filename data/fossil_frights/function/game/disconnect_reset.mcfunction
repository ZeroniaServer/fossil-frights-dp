function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:bossbar/clear
function fossil_frights:animations/door/open
function fossil_frights:animations/crane/reset
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:join/maybe_notify_next
