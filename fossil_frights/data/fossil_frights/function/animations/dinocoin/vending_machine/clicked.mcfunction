advancement revoke @s only fossil_frights:misc/vending_machine_click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $vending_busy ff_game_state matches 1.. run return 0
execute store result score #vending_coin_count ff_hazard_rng run clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 0
execute unless score #vending_coin_count ff_hazard_rng matches 1.. run return run function fossil_frights:animations/dinocoin/vending_machine/fail
clear @s *[minecraft:custom_data~{itemID:"dinocoin"}] 1
execute if score $vending_current ff_game_state matches 1 run function fossil_frights:run_breakdown/event/add {code:"C",id:"11"}
execute if score $vending_current ff_game_state matches 2 run function fossil_frights:run_breakdown/event/add {code:"C",id:"12"}
execute if score $vending_current ff_game_state matches 3 run function fossil_frights:run_breakdown/event/add {code:"C",id:"13"}
execute if score $vending_current ff_game_state matches 4 run function fossil_frights:run_breakdown/event/add {code:"C",id:"14"}
execute if score $vending_current ff_game_state matches 5 run function fossil_frights:run_breakdown/event/add {code:"C",id:"15"}
execute if score $vending_current ff_game_state matches 6 run function fossil_frights:run_breakdown/event/add {code:"C",id:"16"}
advancement grant @s only fossil_frights:02_achievements/quenched
scoreboard players set $vending_busy ff_game_state 1
execute if score $vending_current ff_game_state matches 1 run loot give @s loot fossil_frights:items/drinks/veloci_tea
execute if score $vending_current ff_game_state matches 2 run loot give @s loot fossil_frights:items/drinks/pteranadon_twist
execute if score $vending_current ff_game_state matches 3 run loot give @s loot fossil_frights:items/drinks/raptor_rush
execute if score $vending_current ff_game_state matches 4 run loot give @s loot fossil_frights:items/drinks/bubbly_bat
execute if score $vending_current ff_game_state matches 5 run loot give @s loot fossil_frights:items/drinks/chorus_cola
execute if score $vending_current ff_game_state matches 6 run loot give @s loot fossil_frights:items/drinks/fossil_fizz
function fossil_frights:animations/dinocoin/vending_machine/select
schedule function fossil_frights:animations/dinocoin/vending_machine/finish 40t replace
