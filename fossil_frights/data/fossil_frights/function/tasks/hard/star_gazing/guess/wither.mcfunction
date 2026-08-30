execute unless score $star_gazing_sel ff_task_state matches 1 run title @p[team=ff_guard,distance=..6,sort=nearest,limit=1] actionbar {"translate":"ff.task.star_gazing.no_constellation","color":"red"}
execute as @p[team=ff_guard,distance=..6,sort=nearest,limit=1] run function fossil_frights:tasks/hard/star_gazing/guess/wither_player
