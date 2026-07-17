scoreboard players set @s ff_anvil_time 0
scoreboard players set @s ff_anvil_result 0
scoreboard players set @s ff_anvil_hits 0
tag @s add ff_anvil_busy
tag @e[type=minecraft:item,tag=!ff_anvil_input,tag=!ff_anvil_output,distance=..0.75,limit=1,sort=nearest] add ff_anvil_claim_source
data remove storage fossil_frights:anvil source
data modify storage fossil_frights:anvil source.stack set from entity @e[type=minecraft:item,tag=ff_anvil_claim_source,distance=..0.75,limit=1,sort=nearest] Item
execute store result score $anvil_input_count ff_dummy run data get entity @e[type=minecraft:item,tag=ff_anvil_claim_source,distance=..0.75,limit=1,sort=nearest] Item.count 1
execute if score $anvil_input_count ff_dummy matches 1 run tag @e[type=minecraft:item,tag=ff_anvil_claim_source,distance=..0.75,limit=1,sort=nearest] add ff_anvil_input
execute if score $anvil_input_count ff_dummy matches 1 run tag @e[type=minecraft:item,tag=ff_anvil_claim_source,distance=..0.75,limit=1,sort=nearest] remove ff_anvil_claim_source
execute if score $anvil_input_count ff_dummy matches 2.. run data modify storage fossil_frights:anvil source.single set from storage fossil_frights:anvil source.stack
execute if score $anvil_input_count ff_dummy matches 2.. run data modify storage fossil_frights:anvil source.single.count set value 1
execute if score $anvil_input_count ff_dummy matches 2.. run summon minecraft:item ~ ~ ~ {Tags:["ff_anvil_input"],PickupDelay:32767,Age:-32768,Item:{id:"minecraft:stone",count:1}}
execute if score $anvil_input_count ff_dummy matches 2.. run data modify entity @e[type=minecraft:item,tag=ff_anvil_input,distance=..1,limit=1,sort=nearest] Item set from storage fossil_frights:anvil source.single
execute if score $anvil_input_count ff_dummy matches 2.. run scoreboard players operation $anvil_remaining_count ff_dummy = $anvil_input_count ff_dummy
execute if score $anvil_input_count ff_dummy matches 2.. run scoreboard players remove $anvil_remaining_count ff_dummy 1
execute if score $anvil_input_count ff_dummy matches 2.. store result storage fossil_frights:anvil source.stack.count int 1 run scoreboard players get $anvil_remaining_count ff_dummy
execute if score $anvil_input_count ff_dummy matches 2.. run data modify entity @e[type=minecraft:item,tag=ff_anvil_claim_source,distance=..0.75,limit=1,sort=nearest] Item set from storage fossil_frights:anvil source.stack
execute if score $anvil_input_count ff_dummy matches 2.. run tag @e[type=minecraft:item,tag=ff_anvil_claim_source,distance=..0.75,limit=1,sort=nearest] remove ff_anvil_claim_source
data remove storage fossil_frights:anvil source.single
function fossil_frights:animations/anvil/spawn_displays
execute if entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1] if entity @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1] run function fossil_frights:animations/anvil/bind_input
execute if entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1] run function fossil_frights:animations/anvil/resolve_recipe
execute unless entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1] run function fossil_frights:animations/anvil/cleanup
execute unless entity @e[type=minecraft:item_display,tag=ff_anvil_mace,distance=..2,limit=1] run function fossil_frights:animations/anvil/cleanup
