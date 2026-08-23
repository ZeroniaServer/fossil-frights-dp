$execute unless score $(key) ff_heist_loot_state matches 1..2 run return 0
execute if score $heist_elapsed ff_heist matches ..600 run advancement grant @a[team=ff_thief,gamemode=!spectator,sort=nearest,limit=1,distance=..10] only fossil_frights:02_achievements/heists_quick_hands
$scoreboard players operation $heist_loot ff_heist += $(key) ff_heist_loot_value
function fossil_frights:game/heists/loot/header
$scoreboard players set $(key) ff_heist_loot_state 3
function fossil_frights:game/heists/loot/reorder
function fossil_frights:game/heists/loot/render
$scoreboard players operation #capture_value ff_heist_loot_value = $(key) ff_heist_loot_value
execute on origin if entity @s[type=minecraft:player,team=ff_thief,gamemode=!spectator] run scoreboard players operation @s ff_heist_loot_captured_round += #capture_value ff_heist_loot_value
execute as @a[team=ff_guard,gamemode=!spectator] run scoreboard players operation @s ff_heist_reward = #capture_value ff_heist_loot_value
execute as @a[team=ff_thief,gamemode=!spectator] run scoreboard players operation @s ff_heist_reward = #capture_value ff_heist_loot_value
execute as @a[gamemode=spectator,tag=!ff_tutorial] run scoreboard players operation @s ff_heist_reward = #capture_value ff_heist_loot_value
execute as @a[team=ff_thief,gamemode=!spectator] run scoreboard players set @s ff_msg_cooldown 20
function fossil_frights:game/heists/loot/capture/announce
execute as @a[team=ff_guard,gamemode=!spectator] at @s run playsound fossil-frights:heists.loot_capture master @s ~ ~ ~ 0.95 1
execute as @a[team=ff_thief,gamemode=!spectator] at @s run playsound fossil-frights:heists.loot_capture master @s ~ ~ ~ 0.95 1
execute as @a[gamemode=spectator,tag=!ff_tutorial] at @s run playsound fossil-frights:heists.loot_capture master @s ~ ~ ~ 0.95 1
particle minecraft:poof ~ ~0.1 ~ 0.08 0.08 0.08 0.03 8 force
kill @s
execute if score $heist_loot ff_heist >= #heist_goal ff_heist unless score $victory_complete ff_game_state matches 1 run function fossil_frights:game/heists/end/thieves_win
