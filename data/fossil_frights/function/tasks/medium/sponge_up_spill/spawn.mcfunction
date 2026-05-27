function fossil_frights:tasks/medium/sponge_up_spill/cleanup
summon minecraft:interaction -15.5 80 72.5 {width:1.2f,height:1.0f,response:1b,Tags:["ff_sponge_up_spill","ff_sponge_up_spill_click"]}
execute as @e[type=item_display,tag=ff_task_slippy_sign] run data merge entity @s {view_range:1}
