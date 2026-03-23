execute if score @s ff_queue_start matches 1.. if score @s ff_queue_start_token = $queue_start_token ff_queue_start_token if score @s ff_queue_order matches 1 if score $game_running ff_game_state matches 0 if score $active_set ff_game_state matches 0 if entity @s[tag=ff_in_queue] run function fossil_frights:join/start_from_queue
scoreboard players set @s ff_queue_start 0
