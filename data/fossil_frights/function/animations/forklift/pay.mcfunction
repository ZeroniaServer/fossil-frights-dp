clear @s minecraft:gold_ingot 1
function fossil_frights:animations/forklift/down
advancement grant @s only fossil_frights:02_achievements/forklift_certified
scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 1
title @s actionbar [{"text":"Forklift Lowered","color":"green"}]
