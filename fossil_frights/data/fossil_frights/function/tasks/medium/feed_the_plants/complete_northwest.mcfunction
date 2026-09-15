execute unless score $feed_the_plants_sel ff_task_state matches 1 run return 0
execute unless score $feed_the_plants_done ff_task_state matches 0 run return 0
execute positioned 23.5 94 70.5 as @e[type=minecraft:item_display,tag=animation.carnivorous_flytrap.root,tag=ff_feed_the_plants_flytrap_northwest,distance=..0.1,limit=1] at @s run function fossil_frights:tasks/medium/feed_the_plants/flytrap_fed
function fossil_frights:tasks/medium/feed_the_plants/complete
