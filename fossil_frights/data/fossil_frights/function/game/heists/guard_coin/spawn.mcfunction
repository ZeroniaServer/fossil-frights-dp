execute store result score $heist_guard_coin_location ff_heist run random value 1..14
execute if score $heist_guard_coin_location ff_heist matches 1 run execute positioned -1.25 81.0 26.75 run function fossil_frights:game/heists/guard_coin/announce {location:"behind_santasaurus"}
execute if score $heist_guard_coin_location ff_heist matches 2 run execute positioned -2.5 69.0 29.75 run function fossil_frights:game/heists/guard_coin/announce {location:"gift_pile"}
execute if score $heist_guard_coin_location ff_heist matches 3 run execute positioned 16.75 70.0 53.25 run function fossil_frights:game/heists/guard_coin/announce {location:"dinonog_bar"}
execute if score $heist_guard_coin_location ff_heist matches 4 run execute positioned -30.75 82.0 79.0 run function fossil_frights:game/heists/guard_coin/announce {location:"boss_room"}
execute if score $heist_guard_coin_location ff_heist matches 5 run execute positioned 65.25 86.0 77.85 run function fossil_frights:game/heists/guard_coin/announce {location:"penguins_igloo"}
execute if score $heist_guard_coin_location ff_heist matches 6 run execute positioned -24.75 97.0 40.75 run function fossil_frights:game/heists/guard_coin/announce {location:"raptor_eggs"}
execute if score $heist_guard_coin_location ff_heist matches 7 run execute positioned -13.5 95.0 50.5 run function fossil_frights:game/heists/guard_coin/announce {location:"tree_hole"}
execute if score $heist_guard_coin_location ff_heist matches 8 run execute positioned 15.5 102.0 86.5 run function fossil_frights:game/heists/guard_coin/announce {location:"aviary_fence"}
execute if score $heist_guard_coin_location ff_heist matches 9 run execute positioned 25.5 98.0 89.5 run function fossil_frights:game/heists/guard_coin/announce {location:"parrot_nest"}
execute if score $heist_guard_coin_location ff_heist matches 10 run execute positioned -22.5 81.0 27.5 run function fossil_frights:game/heists/guard_coin/announce {location:"gift_shop_counter"}
execute if score $heist_guard_coin_location ff_heist matches 11 run execute positioned 16.5 71.0 20.5 run function fossil_frights:game/heists/guard_coin/announce {location:"start_room"}
execute if score $heist_guard_coin_location ff_heist matches 12 run execute positioned 69.0 80.0 37.5 run function fossil_frights:game/heists/guard_coin/announce {location:"ice_rink"}
execute if score $heist_guard_coin_location ff_heist matches 13 run execute positioned 21.4 98.0 31.2 run function fossil_frights:game/heists/guard_coin/announce {location:"atop_mammoth"}
execute if score $heist_guard_coin_location ff_heist matches 14 run execute positioned 52.5 73.75 80.5 run function fossil_frights:game/heists/guard_coin/announce_floating {location:"above_sarcophagus"}
scoreboard players set $heist_guard_coin_pending ff_heist 0
