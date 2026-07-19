kill @e[type=minecraft:interaction,tag=ff_heist_low_loot]
kill @e[type=minecraft:shulker,tag=fh_treasure_chest_collidebox]
execute as @e[tag=fh_treasure_chest] run data merge entity @s {view_range:1f}
setblock -2 82 66 minecraft:bubble_column[drag=false]
execute as @e[tag=fh_warden] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_crab] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_trex_skull] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_raptor_skull] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_biplane] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_vault] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_velociraptor] run data merge entity @s {view_range:1f}
