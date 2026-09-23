execute unless score $star_gazing_sel ff_task_state matches 1 as @p[team=ff_guard,distance=..6] run function fossil_frights:player/actionbar/show/generic/star_gazing.no_constellation
execute as @p[team=ff_guard,distance=..6,sort=nearest,limit=1] run function fossil_frights:tasks/hard/star_gazing/guess/guardian_player
