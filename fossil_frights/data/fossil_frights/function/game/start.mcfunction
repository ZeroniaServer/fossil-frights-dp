execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 23 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 23 run tag @s add ff_game_start_source
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 23 if entity @a[limit=1,tag=!ff_game_start_source] at @s run function fossil_frights:animations/game_start/run
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 23 run tag @s remove ff_game_start_source
execute if entity @s[tag=ff_tp_dispatch,tag=ff_join_start_teleport] if score @s ff_tp_action matches 23 run tp @s 20 70 20 0 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 23 run tag @s remove ff_join_start_teleport
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[predicate=fossil_frights:player/is_playing] run function fossil_frights:player/reset_attributes
execute as @a[predicate=fossil_frights:player/is_playing] run function fossil_frights:player/reset_effects
execute if predicate fossil_frights:game_state/heist_mode_active run return run function fossil_frights:game/heists/start/start_round
execute unless entity @a[limit=1,predicate=fossil_frights:player/team/guard] run function fossil_frights:messages/error/no_active_player
execute unless entity @a[limit=1,predicate=fossil_frights:player/team/guard] run return 0

function fossil_frights:tasks/task_book_shelf/clear
function fossil_frights:game/reset/cleanup_dropped_items
function fossil_frights:game/reset/hazards
function fossil_frights:tasks/reset
scoreboard players set $ancient_portal_timer ff_task_state 0
execute as @e[type=#fossil_frights:display_entities,tag=ff_ancient_portal] run data modify entity @s view_range set value 0
function fossil_frights:cameras/camera_setup
function fossil_frights:tasks/hard/pig_wrangler/spawn_waiting
function fossil_frights:game/bossbar/setup
scoreboard players set #dinonog_bar ff_dinonog 3600
scoreboard players set #dinonog_max ff_dinonog 3600
scoreboard players set #dinonog_last_frame ff_dinonog -1
function fossil_frights:frights/dinonog/update
function fossil_frights:animations/defeat/stop
function fossil_frights:join/join_pads/setup
function fossil_frights:game/frights/worldborder/reset
function fossil_frights:game/time/reset
function fossil_frights:game/frights/timer/reset
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/glass_box/reset
function fossil_frights:animations/front_door/close
function fossil_frights:animations/dinocoin/crane/reset
function fossil_frights:animations/dinocoin/sarcophagus/reset
function fossil_frights:animations/dinocoin/crab/reset
function fossil_frights:animations/dinocoin/vending_machine/setup
function fossil_frights:frights/puffer/reset
function fossil_frights:frights/puffer/summon
function fossil_frights:frights/creeper/reset
function fossil_frights:frights/skeleton/reset
function fossil_frights:frights/falling_bone/reset
execute as @a[predicate=fossil_frights:player/team/guard,tag=!ff_fade_tp_active] run title @s times 5 3 10
execute as @a[predicate=fossil_frights:player/team/guard,tag=!ff_fade_tp_active] run title @s title {"text":"","font":"fossil_frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @a[predicate=fossil_frights:player/team/guard,tag=!ff_fade_tp_active] ff_tp_action 23
scoreboard players set @a[scores={ff_tp_action=23},tag=!ff_fade_tp_active] ff_tp_delay 18
tag @a[scores={ff_tp_action=23},tag=!ff_fade_tp_active] add ff_fade_tp_active
gamemode adventure @a[predicate=fossil_frights:player/team/guard]
execute as @a[predicate=fossil_frights:player/team/guard] run attribute @s minecraft:scale base reset
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:player/protection_disable
clear @a[predicate=fossil_frights:player/team/guard]
tag @a[predicate=fossil_frights:player/team/guard] remove ff_plushie_restore_pending
tag @a[predicate=fossil_frights:player/team/guard] remove ff_plushie_restore_queued
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:items/plushies/clear_items
effect clear @a[predicate=fossil_frights:player/team/guard] minecraft:absorption
effect clear @a[predicate=fossil_frights:player/team/guard] minecraft:health_boost
effect give @a[predicate=fossil_frights:player/team/guard] minecraft:instant_health 100 0 true
effect give @a[predicate=fossil_frights:player/team/guard] minecraft:saturation infinite 255 true
scoreboard players reset @a[predicate=fossil_frights:player/team/guard] ff_key_cooldown
scoreboard players reset @a[predicate=fossil_frights:player/team/guard] ff_coin_used_run
scoreboard players set @a[predicate=fossil_frights:player/team/guard] ff_speedrun_delta 0
scoreboard players set @a[predicate=fossil_frights:player/team/guard] ff_speedrun_sign 0
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:player/actionbar/clear
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:player/equip_security_hat
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:key/give_waiting
execute as @a[predicate=fossil_frights:player/team/guard] at @s run spawnpoint @s 20 70 20
scoreboard players set $bats_fright ff_game_state 0
scoreboard players set $puffer_fright ff_game_state 0
scoreboard players set $puffer_timer ff_game_state 0
scoreboard players set $creeper_fright ff_game_state 0
scoreboard players set $skeleton_fright ff_game_state 0
scoreboard players set $bogged_fright ff_game_state 0
scoreboard players reset @a ff_fright_timer
scoreboard players set $day_current ff_day 0
scoreboard players set $day_result ff_day 0
scoreboard players set $day_timer ff_day 0
scoreboard players set $day_active ff_day 0
scoreboard players set $day_flash ff_day 0
scoreboard players set $game_running ff_game_state 1
function fossil_frights:frightmas/santasaurus/spawn
function fossil_frights:frightmas/elfsembly_line/spawn
execute as @a[predicate=fossil_frights:player/team/guard] at @s run function fossil_frights:game/rejoin/state/register_frights
scoreboard players set $run_admin_modified ff_game_state 0
scoreboard players set $victory_complete ff_game_state 0
scoreboard players set $speedrun_victory_blink ff_speedrun_blink 0
scoreboard players set $defeat_lock ff_game_state 0
execute as @a[predicate=fossil_frights:player/team/guard] run function fossil_frights:key/refresh
scoreboard players set $idle_ticks ff_game_state 0
scoreboard players set $idle_queue_present ff_game_state 0
function fossil_frights:game/start_room/settings/apply_preferences
function fossil_frights:game/start_room/settings/sync_message_state
function fossil_frights:run_breakdown/start
function fossil_frights:tasks/tracker/refresh
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/locked_door/show
function fossil_frights:game/start_room/settings/board/refresh
