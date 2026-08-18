$data modify storage fossil_frights:lootbook ui.args set value {key:"$(key)",name_key:"$(name_key)",description_key:"$(description_key)",prefix:$(prefix)}
$loot replace block 0 0 0 container.0 27 loot $(loot_table)
data modify storage fossil_frights:lootbook ui.args.item set from block 0 0 0 Items[0]
data remove storage fossil_frights:lootbook ui.args.item.Slot

function fossil_frights:items/heists/lootbook/entry/all with storage fossil_frights:lootbook ui.args
data modify storage fossil_frights:lootbook ui.body append from storage fossil_frights:lootbook ui.entry
