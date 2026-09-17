execute if score $victory_complete ff_game_state matches 1 run return 0
scoreboard players set $heist_round_active ff_game_state 1
execute as @a[team=ff_guard] at @s run function fossil_frights:game/rejoin/state/register
execute as @a[team=ff_thief] at @s run function fossil_frights:game/rejoin/state/register
function fossil_frights:game/start_room/settings/board/refresh
scoreboard players set $heist_capture_disabled ff_game_state 0
function fossil_frights:animations/dinocoin/vending_machine/setup
scoreboard players set $heist_wait_ticks ff_heist 0
scoreboard players set $heist_wait_queue_present ff_heist 0
scoreboard players set $heist_timer ff_heist 12000
scoreboard players set $heist_elapsed_offset ff_heist 0
scoreboard players set $heist_stopwatch_active ff_heist 0
stopwatch remove fossil_frights:heist_round
fill -5 68 8 -3 68 8 magma_block
scoreboard players set $heist_loot ff_heist 0
scoreboard players set $heist_elapsed ff_heist 0
scoreboard players set $heist_guard_coin_stage ff_heist 0
scoreboard players set $heist_guard_coin_delay ff_heist 0
scoreboard players set $heist_guard_coin_pending ff_heist 0
scoreboard players set $security_by_loot ff_heist 0
scoreboard players set $rare_heavy_exact ff_heist 0
scoreboard players set $rare_heavy_exact_prev ff_heist 0
scoreboard players set $reopen_grace ff_heist 0
scoreboard players set $timer_frozen ff_day 1
scoreboard players set $heist_compass_available ff_compass 0
scoreboard players set $heist_compass_available_prev ff_compass -1
scoreboard players set $heist_compass_available_hash ff_compass 0
scoreboard players set $heist_compass_available_hash_prev ff_compass -1
scoreboard players set $heist_compass_counting ff_compass 0
schedule clear fossil_frights:game/heists/start_reveal/next
schedule clear fossil_frights:game/heists/start_reveal/goodluck
schedule clear fossil_frights:game/heists/start_reveal/go
function fossil_frights:messages/bossbar/game_starting
scoreboard objectives setdisplay sidebar
scoreboard players reset $loot ff_heist_sidebar
scoreboard players set @a ff_heist_loot_captured_round 0
scoreboard players set @a ff_heist_keyed_loot_captured_round 0
scoreboard players set @a ff_heist_keys_stolen_round 0
scoreboard players set @a ff_heist_deaths_round 0
tag @a remove ff_heist_stat_participant
tag @a remove ff_heist_stat_thief
tag @a remove ff_heist_stat_guard
tag @a[team=ff_guard] add ff_heist_stat_participant
tag @a[team=ff_guard] add ff_heist_stat_guard
tag @a[team=ff_thief] add ff_heist_stat_participant
tag @a[team=ff_thief] add ff_heist_stat_thief
execute as @a[team=ff_guard] run scoreboard players operation @s ff_heist_deaths_baseline = @s ff_deaths
execute as @a[team=ff_thief] run scoreboard players operation @s ff_heist_deaths_baseline = @s ff_deaths
scoreboard players set @a ff_heist_thieves_killed_round 0
scoreboard players set @a ff_heist_killer_pending 0
scoreboard players set @a ff_heist_killer_uuid_0 0
scoreboard players set @a ff_heist_killer_uuid_1 0
scoreboard players set @a ff_heist_killer_uuid_2 0
scoreboard players set @a ff_heist_killer_uuid_3 0
tag @a remove ff_heist_stat_winner
tag @a remove ff_heist_stat_subject
tag @a remove ff_heist_kill_target
tag @a remove ff_heist_capture_credit_recipient
tag @e[type=minecraft:item] remove ff_heist_capture_credit_known
tag @e[type=minecraft:item] remove ff_heist_capture_credit_snapshot
tag @e[type=minecraft:item] remove ff_heist_capture_credit_source
execute as @a[team=ff_guard] run function fossil_frights:game/heists/loadout/guard
execute as @a[team=ff_guard] at @s run spawnpoint @s 20 70 20
scoreboard players set @a[team=ff_thief] ff_heist_stolen_keys 0
execute as @a[team=ff_thief] run function fossil_frights:game/heists/loadout/thief
execute as @a[team=ff_thief] at @s run spawnpoint @s -1 109 55
function fossil_frights:game/heists/close_release_doors
function fossil_frights:game/heists/items/generate_loot
execute if score $heist_challenge_all ff_heist matches 1 run function fossil_frights:game/heists/challenge/apply_all
function fossil_frights:game/heists/loot/header
function fossil_frights:game/heists/start_reveal/capture_order
function fossil_frights:game/heists/start_reveal/hide_all
scoreboard objectives setdisplay sidebar ff_heist_sidebar
function fossil_frights:game/heists/waiting_text/refresh
function fossil_frights:game/start_room/locked_door/show
function fossil_frights:game/heists/capture_point/show
function fossil_frights:animations/front_door/close
function fossil_frights:join/join_pads/clear
function fossil_frights:join/join_pads/setup
scoreboard players set $heist_reveal_slot ff_heist 50
schedule function fossil_frights:game/heists/start_reveal/next 20t replace
