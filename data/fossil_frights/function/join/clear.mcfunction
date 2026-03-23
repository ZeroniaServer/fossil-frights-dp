kill @e[type=minecraft:block_display,tag=ff_join_queue_pad]
kill @e[type=minecraft:block_display,tag=ff_join_spectator_pad]
kill @e[type=minecraft:armor_stand,tag=ff_join_queue_label]
kill @e[type=minecraft:armor_stand,tag=ff_join_spectator_label]
kill @e[type=mannequin,tag=ff_queue_mannequin]
scoreboard players set @a ff_join_cooldown 0
scoreboard players set @a ff_queue_order 0
tag @a remove ff_in_queue
tag @a remove ff_join_spectator_zone
