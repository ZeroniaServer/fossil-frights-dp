function fossil_frights:items/other/confetti_cannon/remote
execute store result storage fossil_frights:items definitions.other.confetti_cannon.remote.components."minecraft:damage" int 1 run scoreboard players get @s ff_confetti_uses
function fossil_frights:items/util/replace_mainhand_from_storage {path:"definitions.other.confetti_cannon.remote"}
