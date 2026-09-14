execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_anvil.process] run return 0

execute unless items block 0 0 0 container.0 *[minecraft:custom_data~{ff_anvil_ingredient:{}}] run return 0
data modify storage fossil_frights:anvil input set from block 0 0 0 Items[0]
data remove storage fossil_frights:anvil input.Slot
execute positioned 39 81 62 run summon minecraft:item ~ ~ ~ {Tags:["ff_anvil.display","ff_anvil.input_display"],Item:{id:"minecraft:stone",components:{"minecraft:item_model":"minecraft:air"}},PickupDelay:32767}
execute positioned 39 81 62 run item replace entity @e[limit=1,distance=..0.001,type=minecraft:item,tag=ff_anvil.input_display] contents from block 0 0 0 container.0

item replace block 0 0 0 container.1 with air
function fossil_frights:animations/anvil/clicked/set_result with storage fossil_frights:anvil input.components.minecraft:custom_data.ff_anvil_ingredient
execute if items block 0 0 0 container.1 *[container=[]] run item replace block 0 0 0 container.1 with air
execute unless items block 0 0 0 container.1 * positioned 39.5 81.0 62.5 run return run function fossil_frights:animations/anvil/clicked/fail

execute positioned 39.5 81.0 62.5 summon minecraft:item_display run function fossil_frights:animations/anvil/process/start
