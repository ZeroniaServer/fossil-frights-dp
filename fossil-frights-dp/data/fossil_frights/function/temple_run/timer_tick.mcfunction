scoreboard players add @s ff_temple_run_time 5
function fossil_frights:temple_run/update_display
execute if score @s ff_temple_run_time matches 30000.. run function fossil_frights:temple_run/timeout

