scoreboard players set $heist_round_active ff_game_state 1
scoreboard players set $heist_wait_ticks ff_heist 0
scoreboard players set $heist_wait_queue_present ff_heist 0
scoreboard players set $heist_timer ff_heist 12000
scoreboard players set $heist_loot ff_heist 0
scoreboard players set $heist_elapsed ff_heist 0
scoreboard players set $security_by_loot ff_heist 0
scoreboard players set $high_exact ff_heist 0
scoreboard players set $high_exact_prev ff_heist 0
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
function fossil_frights:game/heists/loot/header
function fossil_frights:messages/bossbar/game_starting
scoreboard objectives setdisplay sidebar
scoreboard players reset $loot ff_heist_sidebar
execute as @a[team=ff_guard] run function fossil_frights:game/heists/loadout/guard
execute as @a[team=ff_guard] at @s run spawnpoint @s 20 70 20
scoreboard players set @a[team=ff_thief] ff_heist_stolen_keys 0
execute as @a[team=ff_thief] run function fossil_frights:game/heists/loadout/thief
execute as @a[team=ff_thief] at @s run spawnpoint @s -1 109 55
function fossil_frights:game/heists/close_release_doors
function fossil_frights:game/heists/generate_loot
function fossil_frights:game/heists/start_reveal/capture_order
function fossil_frights:game/heists/start_reveal/hide_all
scoreboard objectives setdisplay sidebar ff_heist_sidebar
function fossil_frights:game/heists/waiting_text/refresh
function fossil_frights:game/heists/oxidized_bars/show
function fossil_frights:game/heists/capture_point/show
function fossil_frights:animations/door/close
function fossil_frights:join/join_pads/clear
function fossil_frights:join/join_pads/setup
scoreboard players set $heist_reveal_slot ff_heist 50
schedule function fossil_frights:game/heists/start_reveal/next 20t replace
