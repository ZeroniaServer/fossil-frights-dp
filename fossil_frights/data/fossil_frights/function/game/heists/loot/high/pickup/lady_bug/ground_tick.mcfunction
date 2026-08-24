execute store result score @s ff_bat_bug_timer run data get entity @s Age
scoreboard players operation $heist_lady_bug_drop_timer ff_bat_bug_timer = $heist_lady_bug_despawn_age ff_constant
scoreboard players operation $heist_lady_bug_drop_timer ff_bat_bug_timer -= @s ff_bat_bug_timer
execute store result entity @s Item.components."minecraft:custom_data".ff_heist_lady_bug_timer int 1 run scoreboard players get $heist_lady_bug_drop_timer ff_bat_bug_timer
