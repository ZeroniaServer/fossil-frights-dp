execute store result entity @s Item.components."minecraft:custom_data".ff_heist_lady_bug_timer int 1 run scoreboard players get $heist_lady_bug_drop_timer ff_bat_bug_timer
execute store result entity @s Age short 1 run scoreboard players get $heist_lady_bug_drop_age ff_constant
execute store result score @s ff_dropped_item_despawn_timestamp run time query gametime
scoreboard players operation @s ff_dropped_item_despawn_timestamp += $heist_lady_bug_drop_timer ff_bat_bug_timer
tag @s add ff_heist_lady_bug_timed_drop
