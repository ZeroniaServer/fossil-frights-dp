setblock 0 0 0 yellow_shulker_box{lock:{count:-1}} strict
loot replace block 0 0 0 contents loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}]}
$data modify $(to) set from block 0 0 0 Items[0].components.minecraft:profile.name
