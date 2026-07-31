execute if score $heist_admin_bypass_team_check ff_game_state matches 0 unless entity @a[limit=1,team=ff_guard] run return run function fossil_frights:game/heists/thieves_win
execute if score $heist_admin_bypass_team_check ff_game_state matches 0 unless entity @a[limit=1,team=ff_thief] run return run function fossil_frights:game/heists/guards_win
execute if score $heist_loot ff_heist >= #heist_goal ff_heist run return run function fossil_frights:game/heists/thieves_win
execute if score $timer_frozen ff_day matches 1 run return 0
scoreboard players add $heist_flash ff_heist 1
execute if score $heist_flash ff_heist matches 20.. run scoreboard players set $heist_flash ff_heist 0
function fossil_frights:game/heists/loot/low/update_drops
function fossil_frights:game/heists/loot/medium_update_drops
function fossil_frights:game/heists/loot/high_update_drops
function fossil_frights:game/heists/loot/clear_guard_loot
function fossil_frights:game/heists/loot/update_pickup_delay
function fossil_frights:game/heists/loot/update_held
function fossil_frights:advancements/heists/check_greedy
function fossil_frights:game/heists/loot/check_basement_only
function fossil_frights:game/heists/loot/steal_alert
function fossil_frights:game/heists/loot/low/sync
function fossil_frights:game/heists/loot/high/sync/basketball
function fossil_frights:game/heists/loot/high/sync/lost_key
scoreboard players set $heist_compass_available ff_compass 0
scoreboard players set $heist_compass_available_hash ff_compass 0
scoreboard players set $heist_compass_counting ff_compass 1
function fossil_frights:game/heists/loot/render
scoreboard players set $heist_compass_counting ff_compass 0
function fossil_frights:compass/update/heist_if_changed
execute if score $basketball_dance_timer ff_task_state matches 1.. run function fossil_frights:tasks/hard/basketball_dance/tick
scoreboard players remove $heist_timer ff_heist 1
scoreboard players operation $heist_elapsed ff_heist = #heist_full ff_heist
scoreboard players operation $heist_elapsed ff_heist -= $heist_timer ff_heist
execute store result bossbar fossil_frights:bossbar value run scoreboard players get $heist_elapsed ff_heist
execute if score $heist_timer ff_heist matches ..0 run return run function fossil_frights:game/heists/guards_win
function fossil_frights:game/heists/update_timer_display
function fossil_frights:game/heists/loot/header
