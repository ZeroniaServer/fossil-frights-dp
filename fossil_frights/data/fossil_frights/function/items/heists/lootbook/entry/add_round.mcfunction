$execute unless score $(key) ff_heist_loot_state matches 1..3 run return 0
$data modify storage fossil_frights:lootbook ui.args set value {key:"$(key)",name_key:"$(name_key)",description_key:"$(description_key)",item:$(item),prefix:$(prefix)}
$execute store result storage fossil_frights:lootbook ui.args.value int 1 run scoreboard players get $(key) ff_heist_loot_value
$execute if score $(key) ff_heist_loot_state matches 3 run function fossil_frights:items/heists/lootbook/entry/captured with storage fossil_frights:lootbook ui.args
$execute if score $(key) ff_heist_loot_state matches 1..2 run function fossil_frights:items/heists/lootbook/entry/selected with storage fossil_frights:lootbook ui.args
data modify storage fossil_frights:lootbook ui.body append from storage fossil_frights:lootbook ui.entry
