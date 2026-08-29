execute store result score $heist_roll ff_heist run random value 1..5
execute if score $heist_roll ff_heist matches 1 run function fossil_frights:game/heists/loot/select/uncommon/cotton_candy
execute if score $heist_roll ff_heist matches 2 run function fossil_frights:game/heists/loot/select/uncommon/credit_reel
execute if score $heist_roll ff_heist matches 3 run function fossil_frights:game/heists/loot/select/uncommon/muddy_sherd
execute if score $heist_roll ff_heist matches 4 run function fossil_frights:game/heists/loot/select/uncommon/carrot_cake
execute if score $heist_roll ff_heist matches 5 run function fossil_frights:game/heists/loot/select/uncommon/cookie
