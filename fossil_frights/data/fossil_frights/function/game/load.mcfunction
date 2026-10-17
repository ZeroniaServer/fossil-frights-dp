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
tag @a[predicate=fossil_frights:player/team/guard] remove ff_muted_chat
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:player/set_team/lobby
execute as @a[predicate=fossil_frights:player/team/thief] run function fossil_frights:player/set_team/lobby
execute as @a[predicate=fossil_frights:player/team/spectator] run function fossil_frights:player/set_team/lobby
function fossil_frights:tasks/task_book_shelf/reset
function fossil_frights:animations/security_gate/load