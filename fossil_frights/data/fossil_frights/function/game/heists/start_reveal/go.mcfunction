execute unless score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:game/heists/waiting_text/hide
function fossil_frights:game/heists/release_thieves
function fossil_frights:items/heists/trap/balance/compute
execute as @a[team=ff_guard] run function fossil_frights:items/heists/trap/round_start_release
function fossil_frights:game/start_room/locked_door/clear
bossbar remove fossil_frights:bossbar
bossbar add fossil_frights:bossbar [{translate:"ff.heists.bossbar",font:"fossil-frights:small_caps",color:"gold",with:[{text:"10:00",font:"minecraft:default"}]}]
bossbar set fossil_frights:bossbar players @a
bossbar set fossil_frights:bossbar visible true
bossbar set fossil_frights:bossbar color white
bossbar set fossil_frights:bossbar style progress
bossbar set fossil_frights:bossbar max 12000
bossbar set fossil_frights:bossbar value 0
time of minecraft:overworld resume
time set 13000
scoreboard players set $time_anim_active ff_day 0
scoreboard players set $timer_frozen ff_day 0
execute if score $heist_stopwatch_active ff_heist matches 0 store success score $heist_stopwatch_active ff_heist run stopwatch create fossil_frights:heist_round
function fossil_frights:game/heists/timer/update_display
function fossil_frights:messages/heists/started
