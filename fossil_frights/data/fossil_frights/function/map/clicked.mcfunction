advancement revoke @s only fossil_frights:museum_map_click
execute unless predicate fossil_frights:game_state/game_running run return 0
execute if score $victory_complete ff_game_state matches 1 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute if entity @s[tag=ff_map_claimed] run title @s actionbar {color:"red",translate:"ff.museum_map_already_claimed"}
execute if entity @s[tag=ff_map_claimed] run return 0
loot give @s loot fossil_frights:items/other/museum_map
scoreboard players set @s ff_map_region 1
tag @s add ff_map_claimed
scoreboard players add $museum_map_claims ff_game_state 1
