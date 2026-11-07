execute unless score $heist_round_active ff_game_state matches 1 run return 0
function fossil_frights:game/heists/start_reveal/show_all
execute if score $heist_reveal_slot ff_heist matches 50 run function fossil_frights:game/start_room/locked_door/clear
scoreboard players remove $heist_reveal_slot ff_heist 1
execute if score $heist_reveal_slot ff_heist matches 40.. run schedule function fossil_frights:game/heists/start_reveal/next 20t replace
execute if score $heist_reveal_slot ff_heist matches ..39 run schedule function fossil_frights:game/heists/start_reveal/goodluck 30t replace
