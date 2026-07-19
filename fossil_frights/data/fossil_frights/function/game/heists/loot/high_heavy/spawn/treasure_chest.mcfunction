kill @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click]
kill @e[type=minecraft:shulker,tag=fh_treasure_chest_collidebox]
summon minecraft:interaction -2 81 66 {width:2.5,height:2.2,response:true,Tags:["ff_heist_low_loot","ff_heist_low_loot_click","ff_heist_loot_treasure_chest_click"]}
summon shulker -2 81 66 {Invulnerable:1b,NoAI:1b,AttachFace:0b,Tags:["fh_treasure_chest_collidebox"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1728000,show_particles:0b}],attributes:[{id:"minecraft:scale",base:2}]}
