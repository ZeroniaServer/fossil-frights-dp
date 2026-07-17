item modify entity @e[limit=1,type=minecraft:item_display,tag=ff_fire_pottery_task_pot.pot_2] contents fossil_frights:fire_pottery_task/set_baked
execute at @e[limit=1,type=minecraft:item_display,tag=ff_fire_pottery_task_pot.pot_2] run particle minecraft:white_smoke ~ ~0.5 ~ 0.3 0.4 0.3 0.02 10
execute at @e[limit=1,type=minecraft:item_display,tag=ff_fire_pottery_task_pot.pot_2] run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.4 0.3 0.02 30
execute at @e[limit=1,type=minecraft:item_display,tag=ff_fire_pottery_task_pot.pot_2] run particle minecraft:small_flame ~ ~0.5 ~ 0.3 0.4 0.3 0.02 30
execute at @e[limit=1,type=minecraft:item_display,tag=ff_fire_pottery_task_pot.pot_2] run playsound minecraft:entity.blaze.shoot block @a ~ ~ ~ 0.25 0.7
execute at @e[limit=1,type=minecraft:item_display,tag=ff_fire_pottery_task_pot.pot_2] run playsound minecraft:block.fire.ambient block @a ~ ~ ~ 2 2
