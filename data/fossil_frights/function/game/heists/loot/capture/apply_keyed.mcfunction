$execute unless score $(key) ff_heist_loot_state matches 1..2 run return 0
$scoreboard players operation #capture_value ff_heist_loot_value = $(key) ff_heist_loot_value
scoreboard players operation @a[team=ff_thief,gamemode=!spectator,sort=nearest,limit=1,distance=..10] ff_heist_keyed_loot_captured_round += #capture_value ff_heist_loot_value
function fossil_frights:game/heists/loot/capture/apply {key:"$(key)"}
