execute unless score $star_gazing_sel ff_task_state matches 1 run title @p[tag=ff_active,distance=..6,sort=nearest,limit=1] actionbar {"text":"No constellation tonight","color":"red"}
execute as @p[tag=ff_active,distance=..6,sort=nearest,limit=1] run function fossil_frights:tasks/hard/star_gazing/guess/dragon_player
