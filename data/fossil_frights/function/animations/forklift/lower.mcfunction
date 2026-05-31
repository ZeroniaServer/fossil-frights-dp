scoreboard players set $forklift_watch ff_game_state 0
scoreboard players set $forklift_paid ff_game_state 1
function fossil_frights:animations/forklift/clear_schedules
advancement grant @s only fossil_frights:02_achievements/forklift_certified
function fossil_frights:animations/forklift/place_0
execute positioned -1 72 27 run playsound minecraft:block.piston.contract block @a[distance=..24] ~ ~ ~ 1.25 0.85
schedule function fossil_frights:animations/forklift/lower_1 2t
