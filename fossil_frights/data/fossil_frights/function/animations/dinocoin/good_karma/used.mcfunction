scoreboard players set $good_karma_pending ff_game_state 0
scoreboard players set $good_karma_active ff_game_state 0
execute as @e[type=minecraft:item_display,tag=ff_crow] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/crow"}}
function fossil_frights:messages/dinocoin/good_karma/used
execute positioned 26.2 80 30.8 run playsound fossil_frights:frightmas.crow master @a[distance=..16] ~ ~ ~ 1 1
