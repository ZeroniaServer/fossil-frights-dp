execute as @e[type=minecraft:item_display,tag=front_door] unless score @s ff_door_angle matches -2147483648..2147483647 run scoreboard players set @s ff_door_angle 0
execute as @e[type=minecraft:item_display,tag=front_door] unless score @s ff_door_target matches -2147483648..2147483647 run scoreboard players set @s ff_door_target 0
scoreboard players set @e[type=minecraft:item_display,tag=front_door] ff_door_tick 0
scoreboard players set @e[type=minecraft:item_display,tag=front_door] ff_door_delay 4
execute as @e[type=minecraft:item_display,tag=front_door] at @s run playsound minecraft:entity.creaking.activate block @a[distance=..24] ~ ~ ~ 0.9 1.15
scoreboard players set @e[type=minecraft:item_display,tag=front_door] ff_door_target 50
