execute if score $heist_mode_active ff_game_state matches 1 store result score #vending_roll ff_hazard_rng run random value 1..3
execute unless score $heist_mode_active ff_game_state matches 1 store result score #vending_roll ff_hazard_rng run random value 1..6
execute if score $heist_mode_active ff_game_state matches 1 if score #vending_roll ff_hazard_rng matches 1 run scoreboard players set $vending_current ff_game_state 1
execute if score $heist_mode_active ff_game_state matches 1 if score #vending_roll ff_hazard_rng matches 2 run scoreboard players set $vending_current ff_game_state 3
execute if score $heist_mode_active ff_game_state matches 1 if score #vending_roll ff_hazard_rng matches 3 run scoreboard players set $vending_current ff_game_state 4
execute unless score $heist_mode_active ff_game_state matches 1 run scoreboard players operation $vending_current ff_game_state = #vending_roll ff_hazard_rng
execute if score $vending_current ff_game_state matches 1 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,limit=1] at @s run function animation:vending_machine/animations/fill_velocitea/play_exclusive
execute if score $vending_current ff_game_state matches 2 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,limit=1] at @s run function animation:vending_machine/animations/fill_pteranadontwist/play_exclusive
execute if score $vending_current ff_game_state matches 3 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,limit=1] at @s run function animation:vending_machine/animations/fill_raptorrush/play_exclusive
execute if score $vending_current ff_game_state matches 4 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,limit=1] at @s run function animation:vending_machine/animations/fill_bubblybat/play_exclusive
execute if score $vending_current ff_game_state matches 5 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,limit=1] at @s run function animation:vending_machine/animations/fill_jurassicjuice/play_exclusive
execute if score $vending_current ff_game_state matches 6 as @e[type=minecraft:item_display,tag=animation.vending_machine.root,limit=1] at @s run function animation:vending_machine/animations/fill_fossilfizz/play_exclusive
