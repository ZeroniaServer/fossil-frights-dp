# Shared plaque dialogue template.
data modify storage fossil_frights:plaques plaque_data set from entity @s data.ff_plaque
data modify storage fossil_frights:plaques dialogue.name set from storage fossil_frights:plaques plaque_data.name
data modify storage fossil_frights:plaques dialogue.size set value "normal"
data modify storage fossil_frights:plaques dialogue.size set from storage fossil_frights:plaques plaque_data.size
execute on target run function fossil_frights:interactions/plaques/dialogue/display with storage fossil_frights:plaques dialogue
