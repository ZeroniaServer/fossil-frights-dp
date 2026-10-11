# Shared plaque dialog template.
data modify storage fossil_frights:plaques plaque_data set from entity @s data.ff_plaque
execute on target run function fossil_frights:interactions/plaques/dialog/display with storage fossil_frights:plaques plaque_data
