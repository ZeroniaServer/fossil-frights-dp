execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..23
function fossil_frights:game/heists/loot/select/medium_random
execute if score $heist_med_selected ff_heist matches ..3 run function fossil_frights:game/heists/loot/select_medium
