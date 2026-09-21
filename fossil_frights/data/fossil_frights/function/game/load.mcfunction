scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:game/party/reset
function fossil_frights:game/heists/reset/main
scoreboard players set $day_current ff_day 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $custom_day_active ff_day 0
scoreboard players set $time_anim_active ff_day 0
scoreboard players set $time_anim_target ff_day 6000
scoreboard players set $time_anim_resume_cycle ff_day 0
function fossil_frights:game/reset/hazards
tag @a[team=ff_guard] remove ff_muted_chat
team join ff_lobby @a[team=ff_guard]
team join ff_lobby @a[team=ff_thief]
team join ff_lobby @a[team=ff_spectator]
function fossil_frights:tasks/task_book_shelf/reset
function fossil_frights:animations/security_gate/load