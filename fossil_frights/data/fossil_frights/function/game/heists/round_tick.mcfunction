execute unless entity @a[limit=1,team=ff_guard] unless entity @a[limit=1,team=ff_thief] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_heists_guard] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_heists_thief] run return run function fossil_frights:game/reset
execute if score $heist_admin_bypass_team_check ff_game_state matches 0 unless entity @a[limit=1,team=ff_guard] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_heists_guard] run return run function fossil_frights:game/heists/end/thieves_win
execute if score $heist_admin_bypass_team_check ff_game_state matches 0 unless entity @a[limit=1,team=ff_thief] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_heists_thief] run stopsound @a record fossil-frights:heists.music
execute if score $heist_admin_bypass_team_check ff_game_state matches 0 unless entity @a[limit=1,team=ff_thief] unless entity @e[type=minecraft:marker,tag=ff_rejoin_marker,tag=ff_rejoin_heists_thief] run return run function fossil_frights:game/heists/end/guards_win
execute if score $heist_loot ff_heist >= #heist_goal ff_heist run return run function fossil_frights:game/heists/end/thieves_win
execute unless score $heist_stopwatch_active ff_heist matches 1 run return 0
execute if score $timer_frozen ff_day matches 1 run return 0
function fossil_frights:game/heists/timer/sync
execute unless score $heist_stopwatch_active ff_heist matches 1 run return 0
execute if score $heist_timer ff_heist matches ..0 run return run function fossil_frights:game/heists/end/guards_win
function fossil_frights:game/heists/timer/update_display
scoreboard players add $heist_flash ff_heist 1
execute if score $heist_flash ff_heist matches 20.. run scoreboard players set $heist_flash ff_heist 0
function fossil_frights:game/heists/loot/common/update_drops
execute as @e[type=minecraft:interaction,tag=ff_heist_common_loot_click,scores={ff_heist_loot_security_cooldown=1..}] run scoreboard players remove @s ff_heist_loot_security_cooldown 1
execute as @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click,scores={ff_heist_loot_security_cooldown=1..}] run scoreboard players remove @s ff_heist_loot_security_cooldown 1
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_resecure_cooldown,scores={ff_heist_loot_security_cooldown=..0}] run tag @s remove ff_heist_loot_resecure_cooldown
execute as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,scores={ff_heist_loot_security_cooldown=1..}] run scoreboard players remove @s ff_heist_loot_security_cooldown 1
execute as @e[type=minecraft:marker,tag=ff_heist_loot_resecure_cooldown_marker,scores={ff_heist_loot_security_cooldown=..0}] run kill @s
execute as @e[type=minecraft:interaction,tag=ff_heist_common_loot_click,scores={ff_heist_loot_security_flash=1..}] run scoreboard players remove @s ff_heist_loot_security_flash 1
execute as @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click,scores={ff_heist_loot_security_flash=1..}] run scoreboard players remove @s ff_heist_loot_security_flash 1
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,scores={ff_heist_loot_security_lease=1..}] run scoreboard players remove @s ff_heist_loot_security_lease 1
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_security_active,scores={ff_heist_loot_security_lease=..0}] run tag @s remove ff_heist_loot_security_active
execute as @e[type=minecraft:interaction,tag=ff_heist_common_loot_click,tag=!ff_heist_loot_security_active] run scoreboard players set @s ff_heist_loot_security_progress 0
execute as @e[type=minecraft:interaction,tag=ff_heist_heavy_loot_click,tag=!ff_heist_loot_security_active] run scoreboard players set @s ff_heist_loot_security_progress 0
function fossil_frights:game/heists/loot/uncommon/update_drops
function fossil_frights:game/heists/loot/rare/update_drops
function fossil_frights:game/heists/loot/heavy/update_drops
function fossil_frights:game/heists/loot/clear_guard_loot
function fossil_frights:game/heists/loot/update_pickup_delay
function fossil_frights:game/heists/loot/update_held
function fossil_frights:advancements/heists/check_greedy
function fossil_frights:game/heists/loot/check_basement_only
function fossil_frights:game/heists/loot/steal_alert
function fossil_frights:game/heists/loot/sync_all
scoreboard players set $heist_compass_available ff_compass 0
scoreboard players set $heist_compass_available_hash ff_compass 0
scoreboard players set $heist_compass_counting ff_compass 1
function fossil_frights:game/heists/loot/render
scoreboard players set $heist_compass_counting ff_compass 0
function fossil_frights:locator_bar/markers/sync_heist_if_changed
execute if score $basketball_dance_timer ff_task_state matches 1.. run function fossil_frights:tasks/hard/basketball_dance/tick
function fossil_frights:game/heists/loot/header
