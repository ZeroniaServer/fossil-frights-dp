execute if score $heist_common_selected ff_heist matches 5.. run return 0
execute store result score $heist_roll ff_heist run random value 1..16
function fossil_frights:game/heists/loot/select/common/random
execute if score $heist_common_selected ff_heist matches ..4 run function fossil_frights:game/heists/loot/select/common
