advancement revoke @s only fossil_frights:museum_map_click
execute unless score $game_running ff_game_state matches 1 run return 0
give @s minecraft:paper[minecraft:item_name={text:"Foyer",color:"gold",italic:false},minecraft:custom_model_data={floats:[1]},minecraft:max_stack_size=1,minecraft:custom_data={ff_museum_map_dynamic:1b,ff_museum_map_region:1}] 1
scoreboard players set @s ff_map_region 1
scoreboard players add $museum_map_claims ff_game_state 1
