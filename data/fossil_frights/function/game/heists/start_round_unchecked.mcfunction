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
function fossil_frights:game/heists/loot/header
scoreboard objectives setdisplay sidebar ff_heist_sidebar
scoreboard players reset $loot ff_heist_sidebar
execute as @a[tag=ff_heist_guard] run function fossil_frights:game/heists/loadout/guard
execute as @a[tag=ff_heist_guard] at @s run spawnpoint @s 20 70 20
execute as @a[tag=ff_heist_thief] run function fossil_frights:game/heists/loadout/thief
execute as @a[tag=ff_heist_thief] at @s run spawnpoint @s -1 109 55
function fossil_frights:game/heists/generate_loot
function fossil_frights:game/heists/release_thieves
function fossil_frights:game/heists/waiting_text/hide
function fossil_frights:game/heists/oxidized_bars/clear
function fossil_frights:game/heists/capture_point/show
function fossil_frights:animations/door/close
function fossil_frights:join/clear
function fossil_frights:join/setup
bossbar remove fossil_frights:bossbar
bossbar add fossil_frights:bossbar [{"text":"Fossil Heists: 10:00","color":"gold"}]
bossbar set fossil_frights:bossbar players @a
bossbar set fossil_frights:bossbar visible true
bossbar set fossil_frights:bossbar color white
bossbar set fossil_frights:bossbar style progress
bossbar set fossil_frights:bossbar max 12000
bossbar set fossil_frights:bossbar value 0
gamerule doDaylightCycle true
time set 13000
scoreboard players set $time_anim_active ff_day 0
function fossil_frights:game/heists/update_timer_display
function fossil_frights:messages/heists/started
