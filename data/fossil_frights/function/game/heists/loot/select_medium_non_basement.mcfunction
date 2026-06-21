execute store result score $heist_roll ff_heist run random value 1..5
execute if score $heist_roll ff_heist matches 1 run function fossil_frights:game/heists/loot/select/medium/cotton_candy
execute if score $heist_roll ff_heist matches 2 run function fossil_frights:game/heists/loot/select/medium/credit_reel
execute if score $heist_roll ff_heist matches 3 run function fossil_frights:game/heists/loot/select/medium/muddy_sherd
execute if score $heist_roll ff_heist matches 4 run function fossil_frights:game/heists/loot/select/medium/carrot_cake
execute if score $heist_roll ff_heist matches 5 run function fossil_frights:game/heists/loot/select/medium/cookie
