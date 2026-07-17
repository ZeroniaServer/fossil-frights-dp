execute store result score #grow_before_timestamp ff_paint_splat_spawn_timestamp store result score #shrink_before_timestamp ff_paint_splat_spawn_timestamp store result score #kill_before_timestamp ff_paint_splat_spawn_timestamp store result score #become_old_before_timestamp ff_paint_splat_spawn_timestamp run time query gametime
scoreboard players remove #grow_before_timestamp ff_paint_splat_spawn_timestamp 2
scoreboard players remove #shrink_before_timestamp ff_paint_splat_spawn_timestamp 20
scoreboard players remove #become_old_before_timestamp ff_paint_splat_spawn_timestamp 150
scoreboard players remove #kill_before_timestamp ff_paint_splat_spawn_timestamp 420

execute as @e[type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.grown] if score @s ff_paint_splat_spawn_timestamp <= #grow_before_timestamp ff_paint_splat_spawn_timestamp run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{scale:[1,1,1]}}
execute as @e[type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.grown] if score @s ff_paint_splat_spawn_timestamp <= #grow_before_timestamp ff_paint_splat_spawn_timestamp run tag @s add ff_paint_splat.grown
execute as @e[type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.old] if score @s ff_paint_splat_spawn_timestamp <= #become_old_before_timestamp ff_paint_splat_spawn_timestamp run tag @s add ff_paint_splat.old
execute as @e[type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.shrank] if score @s ff_paint_splat_spawn_timestamp <= #shrink_before_timestamp ff_paint_splat_spawn_timestamp run data merge entity @s {start_interpolation:200,interpolation_duration:200,transformation:{scale:[0,0,0]}}
execute as @e[type=minecraft:item_display,tag=ff_paint_splat,tag=!ff_paint_splat.shrank] if score @s ff_paint_splat_spawn_timestamp <= #shrink_before_timestamp ff_paint_splat_spawn_timestamp run tag @s add ff_paint_splat.shrank
execute as @e[type=minecraft:item_display,tag=ff_paint_splat] if score @s ff_paint_splat_spawn_timestamp <= #kill_before_timestamp ff_paint_splat_spawn_timestamp run kill @s
