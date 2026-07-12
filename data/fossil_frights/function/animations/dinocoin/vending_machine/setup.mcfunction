function animated_java:global/on_load
schedule clear fossil_frights:animations/dinocoin/vending_machine/finish
scoreboard players set $vending_busy ff_game_state 0
scoreboard players set $vending_current ff_game_state 0
function animation:vending_machine/remove/all
kill @e[type=minecraft:interaction,tag=ff_vending_machine_drink]
summon minecraft:interaction 26.5 81.0 16.5 {Tags:["ff_vending_machine_drink"],width:1.0f,height:1.0f,response:1b}
execute positioned 26.5 81.5 16.5 run function animation:vending_machine/summon
function fossil_frights:animations/dinocoin/vending_machine/select
