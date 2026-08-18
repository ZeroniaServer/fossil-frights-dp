$execute unless score $(key) ff_heist_loot_state matches 1..3 run return 0

$data modify storage fossil_frights:lootbook ui.args set value {key:"$(key)",name_key:"$(name_key)",description_key:"$(description_key)",prefix:$(prefix)}
$loot replace block 0 0 0 container.0 27 loot $(loot_table)
data modify storage fossil_frights:lootbook ui.args.item set from block 0 0 0 Items[0]
data remove storage fossil_frights:lootbook ui.args.item.Slot

$execute store result storage fossil_frights:lootbook ui.args.value int 1 run scoreboard players get $(key) ff_heist_loot_value
$execute if score $(key) ff_heist_loot_state matches 3 run function fossil_frights:items/heists/lootbook/entry/captured with storage fossil_frights:lootbook ui.args
$execute if score $(key) ff_heist_loot_state matches 1..2 run function fossil_frights:items/heists/lootbook/entry/selected with storage fossil_frights:lootbook ui.args
data modify storage fossil_frights:lootbook ui.body append from storage fossil_frights:lootbook ui.entry
