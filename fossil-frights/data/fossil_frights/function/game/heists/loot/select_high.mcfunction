execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute if score $heist_high_selected ff_heist matches 0 run execute store result score $heist_roll ff_heist run random value 1..10
execute if score $heist_high_selected ff_heist matches 0 run function fossil_frights:game/heists/loot/select/high_random
execute if score $heist_high_selected ff_heist matches 1 run execute store result score $heist_roll ff_heist run random value 11..18
execute if score $heist_high_selected ff_heist matches 1 run function fossil_frights:game/heists/loot/select/high_random
execute if score $heist_high_selected ff_heist matches ..1 run function fossil_frights:game/heists/loot/select_high
