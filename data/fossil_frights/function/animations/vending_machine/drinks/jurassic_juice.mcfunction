function fossil_frights:animations/vending_machine/success_effects
summon minecraft:item 26.5 81.5 16.5 {PickupDelay:10,Item:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"Jurassic Juice","color":"gold","italic":false}',"minecraft:potion_contents":{custom_color:15895592,custom_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:1200}]},"minecraft:custom_data":{ff_vending_machine:1b,ff_drink:"jurassic_juice"}}}}
title @s actionbar [{"text":"Purchased: ","color":"yellow"},{"text":"Jurassic Juice","color":"gold"}]
