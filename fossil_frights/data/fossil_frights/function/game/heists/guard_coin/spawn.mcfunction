execute store result score $heist_guard_coin_location ff_heist run random value 1..9
execute if score $heist_guard_coin_location ff_heist matches 1 run execute positioned -31.50 82.02 78.50 run function fossil_frights:game/heists/guard_coin/announce {location:"boss_office"}
execute if score $heist_guard_coin_location ff_heist matches 2 run execute positioned -35.63 72.05 38.38 run function fossil_frights:game/heists/guard_coin/announce {location:"security_closet"}
execute if score $heist_guard_coin_location ff_heist matches 3 run execute positioned -22.50 81.02 28.50 run function fossil_frights:game/heists/guard_coin/announce {location:"gift_shop_counter"}
execute if score $heist_guard_coin_location ff_heist matches 4 run execute positioned 25.56 98.06 89.50 run function fossil_frights:game/heists/guard_coin/announce {location:"parrot_nest"}
execute if score $heist_guard_coin_location ff_heist matches 5 run execute positioned -17.50 70.02 36.50 run function fossil_frights:game/heists/guard_coin/announce {location:"break_room"}
execute if score $heist_guard_coin_location ff_heist matches 6 run execute positioned -3.50 82.02 46.50 run function fossil_frights:game/heists/guard_coin/announce {location:"dimetrodon_mouth"}
execute if score $heist_guard_coin_location ff_heist matches 7 run execute positioned -17.50 96.02 14.50 run function fossil_frights:game/heists/guard_coin/announce {location:"trike_toilet"}
execute if score $heist_guard_coin_location ff_heist matches 8 run execute positioned 26.25 106.11 29.25 run function fossil_frights:game/heists/guard_coin/announce {location:"neogene_penguin"}
execute if score $heist_guard_coin_location ff_heist matches 9 run execute positioned -21.50 101.02 67.50 run function fossil_frights:game/heists/guard_coin/announce {location:"behind_mars"}
scoreboard players set $heist_guard_coin_pending ff_heist 0
