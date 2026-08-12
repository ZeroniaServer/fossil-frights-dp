$data modify storage fossil_frights:lootbook ui.args set value {key:"$(key)",name_key:"$(name_key)",description_key:"$(description_key)",item:$(item),prefix:$(prefix)}
function fossil_frights:items/heists/lootbook/entry/all with storage fossil_frights:lootbook ui.args
data modify storage fossil_frights:lootbook ui.body append from storage fossil_frights:lootbook ui.entry
