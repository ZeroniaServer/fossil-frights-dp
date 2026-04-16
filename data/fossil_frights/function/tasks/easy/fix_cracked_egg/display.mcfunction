function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
setblock 18 95 58 minecraft:air
summon minecraft:item_frame 18 95 58 {Tags:["ff_fix_cracked_egg","ff_fix_cracked_egg_frame"],Facing:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:egg",count:1,components:{lore:[{text:"",extra:["sniffer_egg"]}],tooltip_display:{hidden_components:["lore"]}}}}
