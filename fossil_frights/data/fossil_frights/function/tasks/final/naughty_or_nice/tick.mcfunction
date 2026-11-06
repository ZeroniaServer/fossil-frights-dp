execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $naughty_or_nice_sel ff_task_state matches 1 run return 0
execute unless score $naughty_or_nice_done ff_task_state matches 0 run return 0
execute if score #naughty_or_nice_done_1 ff_task_state matches 1 if score #naughty_or_nice_done_2 ff_task_state matches 1 if score #naughty_or_nice_done_3 ff_task_state matches 1 run return 0
execute unless score $naughty_or_nice_toss_pending ff_task_state matches 0..1 run scoreboard players set $naughty_or_nice_toss_pending ff_task_state 0
execute as @a[tag=ff_naughty_or_nice_in_office] unless entity @s[x=-7,y=70,z=9,dx=11,dy=5,dz=9] run tag @s remove ff_naughty_or_nice_in_office
execute as @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator,tag=!ff_naughty_or_nice_in_office,x=-7,y=70,z=9,dx=11,dy=5,dz=9] run function fossil_frights:tasks/final/naughty_or_nice/office/on_enter
