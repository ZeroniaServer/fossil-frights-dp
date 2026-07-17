execute if score $time_anim_target ff_day matches 17000 run time set 17000
execute if score $time_anim_target ff_day matches 6000 run time set 6000
scoreboard players set $time_anim_active ff_day 0
execute if score $time_anim_resume_cycle ff_day matches 1 run time of minecraft:overworld resume
execute unless score $time_anim_resume_cycle ff_day matches 1 run time of minecraft:overworld pause
