execute if entity @s[tag=ff_confetti_remote_update_pending] run function fossil_frights:items/other/confetti_cannon/update_remote_damage
tag @s remove ff_confetti_remote_update_pending
tag @s remove ff_confetti_remote_update_pending.offhand

execute if items entity @s weapon.* *[custom_data~{ff_confetti_remote:true}] if items entity @s armor.head *[minecraft:custom_data~{ff_invisimask:{}}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/confetti_cannon/on
execute if items entity @s weapon.* *[custom_data~{ff_confetti_remote:true}] if items entity @s armor.head *[!minecraft:custom_data~{itemID:"confetti_cannon"}] run loot replace entity @s armor.head loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"fossil_frights:items/other/confetti_cannon/cannon",functions:[{function:"minecraft:set_contents",component:"minecraft:container",entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:slot_range",source:"this",slots:"armor.head"}}]}]}]}]}
execute if items entity @s weapon.* *[custom_data~{ff_confetti_remote:true}] unless items entity @s armor.head * run loot replace entity @s armor.head loot fossil_frights:items/other/confetti_cannon/cannon

execute unless items entity @s weapon.* *[custom_data~{ff_confetti_remote:true}] if items entity @s armor.head *[minecraft:custom_data~{itemID:"confetti_cannon"}] run loot replace entity @s armor.head 1 loot {pools:[{rolls:1,entries:[{type:"minecraft:slots",slot_source:{type:"minecraft:contents",slot_source:{type:"minecraft:slot_range",source:"this",slots:"armor.head"},component:"minecraft:container"}}]}]}
execute unless items entity @s weapon.* *[custom_data~{ff_confetti_remote:true}] if items entity @s armor.head *[minecraft:custom_data~{ff_invisimask:{confetti_cannon:true}}] run item modify entity @s armor.head fossil_frights:game/heists/invisimask/confetti_cannon/off
