scoreboard players add @s ff_tutorial_tick 1
execute if score @s ff_tutorial_scene matches 1 run function fossil_frights:tutorial/scene/join
execute if score @s ff_tutorial_scene matches 2 run function fossil_frights:tutorial/scene/intro
execute if score @s ff_tutorial_scene matches 3 run function fossil_frights:tutorial/scene/day_tracker
execute if score @s ff_tutorial_scene matches 4 run function fossil_frights:tutorial/scene/start_next_day
execute if score @s ff_tutorial_scene matches 5 run function fossil_frights:tutorial/scene/tasks
execute if score @s ff_tutorial_scene matches 6 run function fossil_frights:tutorial/scene/easy_tasks
execute if score @s ff_tutorial_scene matches 7 run function fossil_frights:tutorial/scene/medium_tasks
execute if score @s ff_tutorial_scene matches 8 run function fossil_frights:tutorial/scene/hard_tasks
execute if score @s ff_tutorial_scene matches 9 run function fossil_frights:tutorial/scene/hazards
execute if score @s ff_tutorial_scene matches 10 run function fossil_frights:tutorial/scene/outro
