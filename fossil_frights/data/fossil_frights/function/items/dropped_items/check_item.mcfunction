tag @s add ff_dropped_item_checked

## Do nothing for items spawned from the `/give` command
execute if data entity @s {Age:5999s} run return 0

## Cancel throw (and do something)
execute if items entity @s contents *[custom_data~{itemID:"infinileaf"}] on origin run tag @s[tag=ff_ant_fight] add ff_dropped_infinileaf
execute if items entity @s contents *[custom_data~{itemID:"infinileaf"}] run return run kill @s

execute if items entity @s contents *[custom_data~{ff_heist_trap:true}] if function fossil_frights:items/dropped_items/check_thrower run execute on origin run function fossil_frights:items/heists/trap/left_click
execute if items entity @s contents *[custom_data~{ff_heist_trap:true}] if function fossil_frights:items/dropped_items/check_thrower run return run function fossil_frights:items/dropped_items/return_item
execute if items entity @s contents *[custom_data~{ff_prevent_drop:true}] if function fossil_frights:items/dropped_items/check_thrower run return run function fossil_frights:items/dropped_items/return_item

## Allow throw
# Item despawning 
# - In Heists Mode, despawn all thrown items after 20 seconds (unless they have `ff_heist_rules.prevent_ground_despawn` set to true)
# - In any game mode, ladybugs inherit the despawn timer based on their `ff_lady_bug.age` value.
# - Everything else does not despawn
scoreboard players set #despawns ff_dummy 0
execute if predicate fossil_frights:game_state/heist_mode_active unless items entity @s contents *[custom_data~{ff_heist_rules:{prevent_ground_despawn:true}}] run scoreboard players set #despawns ff_dummy 1
execute if items entity @s contents *[custom_data~{itemID:"lady_bug"}] run scoreboard players set #despawns ff_dummy 1
execute if entity @s[tag=ff_anvil.display] run scoreboard players set #despawns ff_dummy 0

execute if score #despawns ff_dummy matches 0 run data modify entity @s Age set value -32768
execute if score #despawns ff_dummy matches 1 run function fossil_frights:items/dropped_items/despawn_timer/init

# Heist items
execute if predicate fossil_frights:game_state/heist_mode_active unless items entity @s contents *[custom_data~{ff_heist_rules:{prevent_ground_despawn:true}}] unless entity @s[tag=ff_anvil.display] run function fossil_frights:game/heists/loot/capture/credit/snapshot_owner

# Prevent pickup from non-playing players
execute if dimension minecraft:overworld run data modify entity @s Owner set value [I;0,0,0,0]

# Remove effects
item modify entity @s contents fossil_frights:game/heists/set_invisible/off
item modify entity @s contents fossil_frights:game/heists/set_paint/off
execute if items entity @s contents *[custom_data~{itemID:"hoverboard"}] run item modify entity @s contents fossil_frights:items/hoverboard/set_inactive
