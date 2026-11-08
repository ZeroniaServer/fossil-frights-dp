execute unless score $loot_ice_sculpture ff_heist_loot_state matches 1..2 run return 0
execute unless function fossil_frights:game/heists/loot/capture/credit/resolve run return 0
execute if score $loot_ice_sculpture ff_heist_loot_state matches 1 run function fossil_frights:game/heists/loot/rare/ice_sculpture/mark_stolen
function fossil_frights:game/heists/loot/steal_alert
execute if score $heist_elapsed ff_heist matches ..600 run advancement grant @a[tag=ff_heist_capture_credit_recipient,limit=1] only fossil_frights:02_achievements/heists_quick_hands
scoreboard players operation #capture_value ff_heist_loot_value = $loot_ice_sculpture ff_heist_loot_value
scoreboard players operation @a[tag=ff_heist_capture_credit_recipient,limit=1] ff_heist_loot_captured_round += #capture_value ff_heist_loot_value
scoreboard players operation $heist_loot ff_heist += $loot_ice_sculpture ff_heist_loot_value
function fossil_frights:game/heists/loot/header
scoreboard players set $loot_ice_sculpture ff_heist_loot_state 3
scoreboard players set $loot_ice_sculpture ff_heist_flash 0
setblock 71 83 46 minecraft:air
function fossil_frights:game/heists/loot/reorder
function fossil_frights:game/heists/loot/render
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] run scoreboard players operation @s ff_heist_reward = #capture_value ff_heist_loot_value
execute as @a[predicate=fossil_frights:player/team/thief,gamemode=!spectator] run scoreboard players operation @s ff_heist_reward = #capture_value ff_heist_loot_value
execute as @a[gamemode=spectator,tag=!ff_tutorial] run scoreboard players operation @s ff_heist_reward = #capture_value ff_heist_loot_value
execute as @a[predicate=fossil_frights:player/team/thief,gamemode=!spectator] run scoreboard players set @s ff_msg_cooldown 20
function fossil_frights:game/heists/loot/capture/announce
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator] at @s run playsound fossil_frights:heists.loot_capture master @s ~ ~ ~ 0.95 1
execute as @a[predicate=fossil_frights:player/team/thief,gamemode=!spectator] at @s run playsound fossil_frights:heists.loot_capture master @s ~ ~ ~ 0.95 1
execute as @a[gamemode=spectator,tag=!ff_tutorial] at @s run playsound fossil_frights:heists.loot_capture master @s ~ ~ ~ 0.95 1
particle minecraft:poof ~ ~0.1 ~ 0.08 0.08 0.08 0.03 8 force
particle minecraft:snowflake ~ ~0.8 ~ 0.55 0.55 0.55 0.03 40 force
tag @a remove ff_heist_capture_credit_recipient
tp @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] 0 -1000 0
kill @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver]
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 68.5 82.0 46.5 0 0
data merge entity @e[type=minecraft:item_display,tag=ff_ice_sculpture,limit=1] {view_range:0f}
execute if score $heist_loot ff_heist >= #heist_goal ff_heist unless score $victory_complete ff_game_state matches 1 run function fossil_frights:game/heists/end/thieves_win
