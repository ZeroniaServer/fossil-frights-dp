execute if score $heist_heavy_selected ff_heist matches 1.. run return 0
execute store result score $heist_roll ff_heist run random value 1..8
function fossil_frights:game/heists/loot/select/heavy/random
execute if score $heist_heavy_selected ff_heist matches 0 run function fossil_frights:game/heists/loot/select/heavy
