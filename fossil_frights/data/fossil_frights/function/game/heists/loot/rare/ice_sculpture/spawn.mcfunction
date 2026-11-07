summon minecraft:sulfur_cube ~ ~ ~ {Tags:["ff_heist_ice_sculpture_driver"],equipment:{body:{id:"minecraft:deepslate_emerald_ore"}},Size:1,PersistenceRequired:true,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:false}]}
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] run attribute @s minecraft:friction_modifier base set 0.2
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] run attribute @s minecraft:gravity base set 0.16
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] run attribute @s minecraft:max_health base set 1024
execute as @e[type=minecraft:sulfur_cube,tag=ff_heist_ice_sculpture_driver] run data modify entity @s Health set value 1024.0f
