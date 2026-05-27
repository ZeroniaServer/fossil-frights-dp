execute at @s run function fossil_frights:items/util/load_to_storage {loot:"items/other/confetti_cannon/remote",storage:"fossil_frights:items",path:"temp.confetti_remote"}
execute store result storage fossil_frights:items temp.confetti_remote.components."minecraft:damage" int 1 run scoreboard players get @s ff_confetti_uses
function fossil_frights:items/util/replace_mainhand_from_storage {path:"temp.confetti_remote"}
