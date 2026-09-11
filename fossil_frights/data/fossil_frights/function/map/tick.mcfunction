item replace entity @e[limit=1,type=minecraft:item_display,tag=ff_front_desk_museum_map] contents with minecraft:stone[item_model="fossil-frights:display/map/museum_map"]
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $victory_complete ff_game_state matches 1 run return 0
execute unless entity @e[limit=1,type=minecraft:interaction,tag=ff_museum_map_click] run return 0
execute positioned 2.5 80.5 17.5 unless entity @a[limit=1,team=ff_guard,tag=!ff_map_claimed,scores={ff_run_count=..10,ff_top_day=..9},distance=..10] run return 0
item replace entity @e[limit=1,type=minecraft:item_display,tag=ff_front_desk_museum_map] contents with minecraft:stone[item_model="fossil-frights:display/map/museum_map_item_flashing"]
