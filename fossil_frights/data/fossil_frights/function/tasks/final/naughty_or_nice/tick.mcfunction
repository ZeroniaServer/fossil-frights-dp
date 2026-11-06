execute unless predicate fossil_frights:game_state/game_running run return 0
execute unless score $day_active ff_day matches 1 run return 0
execute unless score $naughty_or_nice_sel ff_task_state matches 1 run return 0
execute unless score $naughty_or_nice_done ff_task_state matches 0 run return 0
execute if score $naughty_or_nice_started ff_task_state matches 0 if entity @a[predicate=fossil_frights:player/team/guard,gamemode=!spectator,x=-7,y=70,z=9,dx=11,dy=5,dz=9,limit=1] run function fossil_frights:tasks/final/naughty_or_nice/office/enter
