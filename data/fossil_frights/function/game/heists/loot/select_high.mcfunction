execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..18
function fossil_frights:game/heists/loot/select/high_random
execute if score $heist_high_selected ff_heist matches ..1 run function fossil_frights:game/heists/loot/select_high
