$execute unless score $(key) ff_heist_loot_state matches 1..2 run return 0
$scoreboard players operation #capture_value ff_heist_loot_value = $(key) ff_heist_loot_value
execute on origin if entity @s[type=minecraft:player,team=ff_thief,gamemode=!spectator] run scoreboard players operation @s ff_heist_keyed_loot_captured_round += #capture_value ff_heist_loot_value
$function fossil_frights:game/heists/loot/capture/apply {key:"$(key)"}
