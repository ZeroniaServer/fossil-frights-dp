execute if score @s ff_queue_start matches 1.. if score @s ff_queue_start_token = $queue_start_token ff_queue_start_token if score @s ff_queue_order matches 1 unless predicate fossil_frights:game_state/game_running if score $active_set ff_game_state matches 0 if entity @s[tag=ff_in_queue] run function fossil_frights:join/queue/start
scoreboard players set @s ff_queue_start 0
