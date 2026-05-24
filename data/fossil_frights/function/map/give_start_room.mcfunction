item replace entity @s hotbar.1 with minecraft:paper[minecraft:item_name={text:"Start Room",color:"gold",italic:false},minecraft:custom_model_data={floats:[24]},minecraft:max_stack_size=1,minecraft:custom_data={ff_museum_map_dynamic:1b,ff_museum_map_region:24}] 1
scoreboard players set @s ff_map_region 24
tag @s add ff_map_auto_given
