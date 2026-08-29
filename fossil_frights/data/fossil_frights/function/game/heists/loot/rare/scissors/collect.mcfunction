execute unless score $loot_misplaced_scissors ff_heist_loot_state matches 1 run return 0
loot give @s loot fossil_frights:items/heists/loot/rare/giant_scissors
scoreboard players set $loot_misplaced_scissors ff_heist_loot_state 2
tag @s add ff_heist_scissors_collector
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click,distance=..10,sort=nearest,limit=1] at @s run function fossil_frights:game/heists/loot/rare/scissors/announce
tag @s remove ff_heist_scissors_collector
effect give @s minecraft:glowing 1 0 true
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.7 1.4
function fossil_frights:game/heists/loot/rare/scissors/sync
function fossil_frights:game/heists/loot/render
