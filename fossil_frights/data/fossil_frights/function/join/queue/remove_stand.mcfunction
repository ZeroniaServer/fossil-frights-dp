scoreboard players operation $queue_removed ff_queue_order = @s ff_queue_order
function fossil_frights:entity/match/active
execute as @a[limit=1,tag=ff_in_queue,predicate=fossil_frights:entity/match/active] run function fossil_frights:join/queue/clear_player_from_source
kill @s
execute as @a[tag=ff_in_queue] if score @s ff_queue_order > $queue_removed ff_queue_order run scoreboard players remove @s ff_queue_order 1
execute as @e[type=mannequin,tag=ff_queue_mannequin] if score @s ff_queue_order > $queue_removed ff_queue_order run scoreboard players remove @s ff_queue_order 1
function fossil_frights:join/queue/refresh_positions
function fossil_frights:join/queue/maybe_notify_next
