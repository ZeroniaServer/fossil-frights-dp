execute if entity @s[tag=ff_rc_dir_s] store result entity @s Motion[2] double 0.01 run scoreboard players get $speed_current ff_rollercoaster
execute if entity @s[tag=ff_rc_dir_n] store result entity @s Motion[2] double -0.01 run scoreboard players get $speed_current ff_rollercoaster
execute if entity @s[tag=ff_rc_dir_e] store result entity @s Motion[0] double 0.01 run scoreboard players get $speed_current ff_rollercoaster
execute if entity @s[tag=ff_rc_dir_w] store result entity @s Motion[0] double -0.01 run scoreboard players get $speed_current ff_rollercoaster

