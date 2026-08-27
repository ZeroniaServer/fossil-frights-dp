scoreboard players remove @a[scores={ff_tp_delay=1..}] ff_tp_delay 1
execute as @a[gamemode=!creative] run attribute @s minecraft:block_interaction_range base set 0
execute as @a[gamemode=creative] run attribute @s minecraft:block_interaction_range base reset
tag @a[scores={ff_tp_delay=12,ff_tp_action=1..}] add ff_tp_dispatch
execute as @a[tag=ff_tp_dispatch] run function #fossil_frights:tp_callbacks
scoreboard players set @a[tag=ff_tp_dispatch] ff_tp_action 0
tag @a[tag=ff_tp_dispatch] remove ff_tp_dispatch
tag @a[scores={ff_tp_delay=..0}] remove ff_fade_tp_active

function fossil_frights:items/dropped_items/tick
execute if predicate fossil_frights:game_state/game_running if predicate fossil_frights:game_state/heist_mode_active as @e[type=minecraft:item,tag=ff_heist_lady_bug_timed_drop] run function fossil_frights:game/heists/loot/high/pickup/lady_bug/ground_tick
function fossil_frights:items/heists/lootbook/tick
function fossil_frights:animations/dinocoin/vending_machine/runtime/on_tick
function fossil_frights:animations/dinocoin/vending_machine/runtime/data_manager/on_tick
tag @a remove ff_frights_feedback_viewer
tag @a[team=ff_guard] add ff_frights_feedback_viewer
tag @a[team=ff_spectator] add ff_frights_feedback_viewer
function fossil_frights:locator_bar/tick
scoreboard players remove @e[type=minecraft:interaction,tag=ff_lock_click,scores={ff_lock_click_ttl=1..}] ff_lock_click_ttl 1
tag @a remove ff_trap_viewer
tag @a[team=ff_guard] add ff_trap_viewer
tag @a[team=ff_spectator] add ff_trap_viewer
execute if score curse ff_hazard_active matches 1 run tag @a[team=ff_thief] add ff_trap_viewer
execute as @e[type=minecraft:marker,tag=ff_confetti] at @s run function fossil_frights:items/other/confetti_cannon/tick
execute as @e[type=minecraft:marker,tag=ff_ice_cannon] at @s run function fossil_frights:items/heists/ice_cannon/tick
execute as @e[type=minecraft:block_display,tag=ff_ice_freeze] at @s run function fossil_frights:items/heists/ice_cannon/freeze_tick
execute as @e[type=minecraft:marker,tag=ff_trap] at @s run function fossil_frights:items/heists/trap/tick
kill @e[type=minecraft:interaction,tag=ff_lock_click,scores={ff_lock_click_ttl=..0}]
scoreboard players remove @e[type=minecraft:interaction,tag=ff_dna_click,scores={ff_lock_click_ttl=1..}] ff_lock_click_ttl 1
kill @e[type=minecraft:interaction,tag=ff_dna_click,scores={ff_lock_click_ttl=..0}]
execute as @e[type=minecraft:item_display,tag=ff_dna_hover] run data modify entity @s Glowing set value false
team leave @e[type=minecraft:item_display,tag=ff_dna_hover]
tag @e[type=minecraft:item_display,tag=ff_dna_hover] remove ff_dna_hover
execute as @e[type=minecraft:item_display,tag=ff_lock_glow] run data modify entity @s Glowing set value false
tag @e[type=minecraft:item_display,tag=ff_lock_glow] remove ff_lock_glow
execute as @e[type=minecraft:item_display,tag=ff_key_anim] at @s run function fossil_frights:key/anim_tick
execute as @e[type=minecraft:item_display,tag=ff_front_door] at @s run function fossil_frights:animations/door/tick
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score $day_current ff_day matches 1 run function fossil_frights:tasks/task_book_shelf/day_1_marker/tick
function fossil_frights:map/tick
execute if score $speedrunner_restart_window ff_game_state matches 1.. run scoreboard players remove $speedrunner_restart_window ff_game_state 1
execute if score $crane_rat_cooldown ff_game_state matches 1.. run scoreboard players remove $crane_rat_cooldown ff_game_state 1
execute if predicate fossil_frights:game_state/game_running if score $crane_wait ff_game_state matches 0 as @a[tag=ff_dinocoin_crane_near] positioned 52 68 60 unless entity @s[predicate=fossil_frights:player/is_playing,distance=..1.5] run tag @s remove ff_dinocoin_crane_near
execute if predicate fossil_frights:game_state/game_running if score $crane_wait ff_game_state matches 0 positioned 52 68 60 as @a[predicate=fossil_frights:player/is_playing,distance=..1.5,tag=!ff_dinocoin_crane_near,sort=nearest,limit=1] run function fossil_frights:animations/dinocoin/crane/nearby
execute if predicate fossil_frights:game_state/game_running if score $crane_wait ff_game_state matches 0 run function fossil_frights:animations/dinocoin/crane/payment/check
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:animations/deep_dark_elevator/tick
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:animations/lady_bug_revolutionary/check
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:animations/dinocoin/sarcophagus/tick
execute if predicate fossil_frights:game_state/heist_mode_active run scoreboard players set @a ff_crab_timer 0
execute if predicate fossil_frights:game_state/heist_mode_active run tag @a remove ff_dinocoin_crab_near
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 unless predicate fossil_frights:game_state/heist_mode_active unless entity @a[scores={ff_crab_timer=1..}] as @a[tag=ff_dinocoin_crab_near] positioned -7.5 71.0 46.5 unless entity @s[predicate=fossil_frights:player/is_playing,distance=..3] run tag @s remove ff_dinocoin_crab_near
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 unless predicate fossil_frights:game_state/heist_mode_active unless entity @a[scores={ff_crab_timer=1..}] positioned -7.5 71.0 46.5 as @a[predicate=fossil_frights:player/is_playing,distance=..3,tag=!ff_dinocoin_crab_near,sort=nearest,limit=1] run function fossil_frights:animations/dinocoin/crab/nearby
execute unless predicate fossil_frights:game_state/heist_mode_active as @a[scores={ff_crab_timer=1..}] run function fossil_frights:animations/dinocoin/crab/tick
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:frights/puffer/tick
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:animations/velociraptor_skull/tick
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:animations/anvil/tick
execute as @a[team=ff_guard] run function fossil_frights:animations/dinocoin/well/tick
execute as @e[type=minecraft:armor_stand,tag=ff_credits_anchor] at @s run function fossil_frights:animations/credits/tick
function fossil_frights:tasks/easy/tick
function fossil_frights:tasks/medium/tick
function fossil_frights:tasks/hard/tick
function fossil_frights:tasks/final/final_task/tick
execute if score $ancient_portal_timer ff_task_state matches 1.. run function fossil_frights:tasks/medium/ancient_portal/portal_tick
execute as @a[scores={ff_key_cooldown=1..}] run function fossil_frights:key/cooldown_tick
execute if score #floods_valve_cooldown ff_hazard_rng matches 1.. run scoreboard players remove #floods_valve_cooldown ff_hazard_rng 1
execute if score floods ff_hazard_active matches 1 run function fossil_frights:hazard/floods/tick
function fossil_frights:hazard/lights/tick
function fossil_frights:hazard/lava/tick
function fossil_frights:hazard/curse/tick
function fossil_frights:hazard/security/tick
function fossil_frights:cameras/update_camera_models
execute unless entity @e[type=minecraft:interaction,tag=ff_settings_mode_frights_click,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute if entity @a[limit=1,x=-8,y=64,z=0,dx=40,dy=30,dz=40] if score $lobby_displays_ready ff_game_state matches 0 run function fossil_frights:game/lobby_displays/ensure_setup
execute if entity @a[limit=1,x=-24,y=70,z=-30,dx=16,dy=30,dz=16] if score $parkour_display_ready ff_parkour_display matches 0 run function fossil_frights:lobby_games/parkour/display/rebuild
execute if entity @a[limit=1,x=82,y=74,z=68,dx=20,dy=20,dz=20] if score $temple_run_display_ready ff_temple_run_display matches 0 run function fossil_frights:lobby_games/temple_run/display/rebuild
execute if entity @a[limit=1,x=-40,y=72,z=90,dx=24,dy=20,dz=24] if score $ant_display_ready ff_ant_display matches 0 run function fossil_frights:lobby_games/ant_fight/display/rebuild
function fossil_frights:lobby_games/sulfur_strikers/tick
execute if score $leaderboard_display_ready ff_lb_calc matches 0 run function fossil_frights:leaderboards/display/rebuild
execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/game_running unless entity @a[limit=1,predicate=fossil_frights:player/is_playing] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker] run function fossil_frights:game/reset/active_disconnect
function fossil_frights:game/tick
execute if score $settings_locked ff_game_state matches 0 run function fossil_frights:game/start_room/settings/board/tick
execute unless score $settings_locked ff_game_state matches 0 if entity @a[tag=ff_settings_hovering] run function fossil_frights:game/start_room/settings/board/clear_hover
function fossil_frights:join/join_pads/tick
function fossil_frights:lobby_games/temple_run/teleporter_walk_tick
function fossil_frights:lobby_games/ant_fight/teleporter_walk_tick
function fossil_frights:lobby_games/parkour/teleporter_walk_tick
function fossil_frights:lobby_games/sulfur_strikers/teleporter_walk_tick
execute as @e[type=minecraft:text_display,tag=ff_tutorial_camera] run function fossil_frights:tutorial/camera/cleanup
execute as @a at @s run function fossil_frights:player/tick
function fossil_frights:game/bossbar/available/refresh
function fossil_frights:tasks/task_book_shelf/update
function fossil_frights:game/heists/alarm_effects/tick
