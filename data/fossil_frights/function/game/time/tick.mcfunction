execute store result score $time_current ff_day run time query minecraft:day
scoreboard players operation $time_dist ff_day = $time_anim_target ff_day
scoreboard players operation $time_dist ff_day -= $time_current ff_day
execute if score $time_dist ff_day matches ..-1 run scoreboard players operation $time_dist ff_day += #daylight_cycle_timeline_length ff_constant
execute if score $time_dist ff_day matches ..120 run function fossil_frights:game/time/tick_finish
execute unless score $time_dist ff_day matches ..120 run time add 120
