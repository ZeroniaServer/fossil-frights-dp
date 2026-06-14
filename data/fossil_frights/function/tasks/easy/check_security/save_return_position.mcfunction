tp @s ~ ~ ~ ~ ~
execute store result score @s ff_forced_spec_x run data get entity @s Pos[0] 1000
execute store result score @s ff_forced_spec_y run data get entity @s Pos[1] 1000
execute store result score @s ff_forced_spec_z run data get entity @s Pos[2] 1000
execute store result score @s ff_forced_spec_yaw run data get entity @s Rotation[0] 1000
execute store result score @s ff_forced_spec_pitch run data get entity @s Rotation[1] 1000
