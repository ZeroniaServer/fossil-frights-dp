scoreboard players add @s ff_parkour_time 5
function fossil_frights:parkour/update_display
execute if score @s ff_parkour_time matches 30000.. run function fossil_frights:parkour/timeout

