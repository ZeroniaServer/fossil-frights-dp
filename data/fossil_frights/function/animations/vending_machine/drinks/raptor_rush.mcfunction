function fossil_frights:animations/vending_machine/success_effects
summon minecraft:item 26.5 81.5 16.5 {PickupDelay:10,Item:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"Raptor Rush","color":"green","italic":false}',"minecraft:potion_contents":{custom_color:3458905,custom_effects:[{id:"minecraft:speed",amplifier:2,duration:120}]},"minecraft:custom_data":{ff_vending_machine:1b,ff_drink:"raptor_rush"}}}}
title @s actionbar [{"text":"Purchased: ","color":"yellow"},{"text":"Raptor Rush","color":"green"}]
