function fossil_frights:game/reset_hazards
function fossil_frights:tasks/reset
function fossil_frights:bossbar/clear
function fossil_frights:game/worldborder/reset
function fossil_frights:game/time/start_rest
function fossil_frights:game/timer/reset
function fossil_frights:animations/door/open
function fossil_frights:animations/crane/reset
function fossil_frights:animations/credits/cleanup
function fossil_frights:frights/sniffer/reset
function fossil_frights:frights/bats/reset
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:animations/velociraptor_skull/reset_rotation
scoreboard players set @a ff_fright_timer 0
gamemode adventure @a[tag=ff_active]
scoreboard players set @a[tag=ff_active] ff_key_cooldown 0
scoreboard players set @a[tag=ff_active] ff_key_bar 0
title @a[tag=ff_active] actionbar ""
clear @a[tag=ff_active]
clear @a[tag=ff_active] minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key:1b}]
clear @a[tag=ff_active] minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key_cooldown:1b}]
clear @a[tag=ff_active] minecraft:warped_fungus_on_a_stick[minecraft:custom_data={ff_dna:1b}]
item replace entity @a[tag=ff_active] weapon.mainhand with air
item replace entity @a[tag=ff_active] weapon.offhand with air
item replace entity @a[tag=ff_active] armor.head with air
tp @a[tag=ff_active] 0 80 0 0 0
execute as @a[tag=ff_active] at @s run spawnpoint @s 0 80 0
execute as @a[tag=ff_active] run function fossil_frights:tasks/final/plushies/restore
tag @a[tag=ff_active] remove ff_forced_spectate
tag @a[tag=ff_active] remove ff_active
team leave @a[team=ff_active_gold]
scoreboard players set $active_set ff_game_state 0
scoreboard players set $game_running ff_game_state 0
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 0
scoreboard players set $crane_wait ff_game_state 0
scoreboard players set $crane_rat_cooldown ff_game_state 0
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $day_current ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $time_anim_resume_cycle ff_day 0
scoreboard players set $active ff_active_uuid_0 0
scoreboard players set $active ff_active_uuid_1 0
scoreboard players set $active ff_active_uuid_2 0
scoreboard players set $active ff_active_uuid_3 0
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:join/maybe_notify_next
