execute if entity @s[tag=ff_in_queue] run tellraw @s {"text":"You are already in queue.","color":"red"}
execute if entity @s[tag=ff_in_queue] run scoreboard players set @s ff_join_cooldown 40
execute if entity @s[tag=ff_in_queue] run return 0
scoreboard players set $queue_count ff_queue_order 0
execute as @e[type=mannequin,tag=ff_queue_mannequin] run scoreboard players add $queue_count ff_queue_order 1
scoreboard players operation @s ff_queue_order = $queue_count ff_queue_order
scoreboard players add @s ff_queue_order 1
tag @s add ff_in_queue
tellraw @a [{"selector":"@s","color":"gold"},{"text":" joined the queue","color":"yellow"}]
function fossil_frights:join/spawn_queue_mannequin
execute if score @s ff_queue_order matches 1 run function fossil_frights:join/maybe_notify_next
scoreboard players set @s ff_join_cooldown 40
