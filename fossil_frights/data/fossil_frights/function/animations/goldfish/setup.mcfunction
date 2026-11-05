kill @e[tag=goldfish]
summon interaction ~ ~ ~ {Tags:["goldfish"],width:0.5,height:0.5,response:true}
summon item_display ~ ~0.5 ~ {Tags:["goldfish"],item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil_frights:display/exhibits/aquatic/goldfish"}},item_display:"head",transformation:{right_rotation:[0,0,0,1],scale:[0.4375,0.4375,0.4375],left_rotation:[0,0,0,1],translation:[0,0,0]},interpolation_duration:2,width:1,height:1}
