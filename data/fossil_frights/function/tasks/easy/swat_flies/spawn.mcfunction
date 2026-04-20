function fossil_frights:tasks/easy/swat_flies/cleanup
summon minecraft:item 0.5 95.6 52.5 {Tags:["ff_swat_flies","ff_swat_flies_item"],NoGravity:1b,PickupDelay:32767,Age:-32768,Item:{id:"minecraft:dried_kelp",count:1,components:{lore:[{text:"",extra:["fly"]}],tooltip_display:{hidden_components:["lore"]}}}}
summon minecraft:interaction 0.5 95.6 52.5 {width:0.8f,height:0.8f,response:1b,Tags:["ff_swat_flies","ff_swat_flies_click"]}
