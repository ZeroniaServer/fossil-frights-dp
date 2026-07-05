kill @e[type=minecraft:interaction,tag=ff_sweep_popcorn]
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn,tag=ff_spilled_popcorn.spilled] positioned 10 69 69 run playsound minecraft:item.brush.brushing.generic master @a[distance=..12] ~ ~ ~ 1 1.4
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn,tag=ff_spilled_popcorn.spilled] positioned 10 69 69 run playsound minecraft:block.grass.break master @a[distance=..12] ~ ~ ~ 0.8 1.4
execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn,tag=ff_spilled_popcorn.spilled] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil-frights:spilled_popcorn"}}} 10.07 69.2 69.39 0.4 0 0.4 0.1 20
item modify entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn,tag=ff_spilled_popcorn.spilled] contents fossil_frights:spilled_popcorn/cleaned
data merge entity @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn,tag=ff_spilled_popcorn.spilled] {start_interpolation:200,interpolation_duration:20,transformation:{scale:[0,0,0],translation:[0,0,0]}}
tag @e[limit=1,type=minecraft:item_display,tag=ff_spilled_popcorn] remove ff_spilled_popcorn.spilled
