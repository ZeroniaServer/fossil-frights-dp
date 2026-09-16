advancement revoke @s only fossil_frights:leaderboards/page_next
execute if score #lb_page ff_lb_calc matches 4.. run return 0
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6 1.0
scoreboard players add #lb_page ff_lb_calc 1
function fossil_frights:leaderboards/display/update
