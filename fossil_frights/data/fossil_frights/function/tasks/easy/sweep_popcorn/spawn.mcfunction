function fossil_frights:tasks/easy/sweep_popcorn/cleanup
item modify entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn] contents fossil_frights:spilled_popcorn/spilled
data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn] {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1.875,1.875,1.875],translation:[0,1,0]}}
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn] positioned 10 69 69 run playsound minecraft:block.grass.break master @a[distance=..12] ~ ~ ~ 0.8 1.4
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil-frights:items/heists/loot/spilled_popcorn"}}} 10.07 69.2 69.39 0.4 0 0.4 0.1 20
tag @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn] add ff_spilled_popcorn.spilled
summon minecraft:interaction 10 69 69 {width:2.2,height:1,response:true,Tags:["ff_sweep_popcorn","ff_sweep_popcorn_click"]}
