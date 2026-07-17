tag @e[tag=front_door] add ff_front_door
tag @e[tag=front_door] remove front_door

tag @e[tag=front_door_left] add ff_front_door.left
tag @e[tag=front_door_left] remove front_door_left

tag @e[tag=front_door_right] add ff_front_door.right
tag @e[tag=front_door_right] remove front_door_right

execute as @e[tag=ff_front_door] at @s run tp @s ~ 80.0 ~
execute as @e[tag=ff_front_door] at @s run data merge entity @s {transformation:{translation:[0,3,0]},width:6,height:6}
