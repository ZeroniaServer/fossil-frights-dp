execute unless score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:game/heists/start_reveal/show_all
execute if score $heist_reveal_slot ff_heist matches 50 run function fossil_frights:game/start_room/locked_door/clear
execute if score $heist_reveal_slot ff_heist matches 50 store result score $heist_stairway_variant ff_heist run random value 1..3
execute if score $heist_reveal_slot ff_heist matches 50 if score $heist_stairway_variant ff_heist matches 1 run place template fossil_frights:stairway/ice_stairway_1 -35 75 52 none none 1 0 strict
execute if score $heist_reveal_slot ff_heist matches 50 if score $heist_stairway_variant ff_heist matches 2 run place template fossil_frights:stairway/ice_stairway_2 -35 75 52 none none 1 0 strict
execute if score $heist_reveal_slot ff_heist matches 50 if score $heist_stairway_variant ff_heist matches 3 run place template fossil_frights:stairway/ice_stairway_3 -35 75 52 none none 1 0 strict
scoreboard players remove $heist_reveal_slot ff_heist 1
execute if score $heist_reveal_slot ff_heist matches 40.. run schedule function fossil_frights:game/heists/start_reveal/next 20t replace
execute if score $heist_reveal_slot ff_heist matches ..39 run schedule function fossil_frights:game/heists/start_reveal/goodluck 30t replace
