execute if entity @s[tag=ff_in_queue] if score @s ff_msg_cooldown matches 0 run function fossil_frights:messages/error/already_in_queue
execute if entity @s[tag=ff_in_queue] if score @s ff_msg_cooldown matches 0 run scoreboard players set @s ff_msg_cooldown 200
execute if entity @s[tag=ff_in_queue] run scoreboard players set @s ff_join_cooldown 40
execute if entity @s[tag=ff_in_queue] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
scoreboard players set $queue_count ff_queue_order 0
execute as @e[type=mannequin,tag=ff_queue_mannequin] run scoreboard players add $queue_count ff_queue_order 1
scoreboard players operation @s ff_queue_order = $queue_count ff_queue_order
scoreboard players add @s ff_queue_order 1
tag @s add ff_in_queue
function fossil_frights:messages/queue/joined
function fossil_frights:join/queue/spawn_mannequin
execute if score @s ff_queue_order matches 1 run function fossil_frights:join/queue/maybe_notify_next
scoreboard players set @s ff_join_cooldown 40
