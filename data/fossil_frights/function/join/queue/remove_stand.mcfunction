scoreboard players operation $queue_removed ff_queue_order = @s ff_queue_order
tag @s add ff_queue_remove_source
execute as @a[tag=ff_in_queue] run function fossil_frights:join/queue/clear_player_from_source
tag @s remove ff_queue_remove_source
kill @s
execute as @a[tag=ff_in_queue] if score @s ff_queue_order > $queue_removed ff_queue_order run scoreboard players remove @s ff_queue_order 1
execute as @e[type=mannequin,tag=ff_queue_mannequin] if score @s ff_queue_order > $queue_removed ff_queue_order run scoreboard players remove @s ff_queue_order 1
function fossil_frights:join/queue/refresh_positions
function fossil_frights:join/queue/maybe_notify_next
