execute if items entity @s hotbar.0 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.0 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.1 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.1 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.2 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.2 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.3 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.3 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.4 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.4 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.5 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.5 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.6 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.6 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.7 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.7 fossil_frights:items/hoverboard/durability/damage
execute if items entity @s hotbar.8 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] run item modify entity @s hotbar.8 fossil_frights:items/hoverboard/durability/damage
function fossil_frights:items/hoverboard/durability/sync_damage
execute if items entity @s hotbar.0 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_0 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.0"}
execute if items entity @s hotbar.1 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_1 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.1"}
execute if items entity @s hotbar.2 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_2 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.2"}
execute if items entity @s hotbar.3 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_3 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.3"}
execute if items entity @s hotbar.4 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_4 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.4"}
execute if items entity @s hotbar.5 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_5 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.5"}
execute if items entity @s hotbar.6 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_6 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.6"}
execute if items entity @s hotbar.7 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_7 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.7"}
execute if items entity @s hotbar.8 *[custom_data~{itemID:"hoverboard",ff_hoverboard_active:true}] if score @s ff_hoverboard_damage_8 matches 3000.. run function fossil_frights:items/hoverboard/durability/break {slot:"hotbar.8"}
