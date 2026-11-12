scoreboard players set $good_karma_pending ff_game_state 0
scoreboard players set $good_karma_active ff_game_state 0
scoreboard players set @a ff_good_karma_nearby 0
execute as @e[type=minecraft:item_display,tag=ff_crow] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/crow"}}
