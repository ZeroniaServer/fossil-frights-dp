execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_0 run data get entity @s UUID[0] 1
execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_1 run data get entity @s UUID[1] 1
execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_2 run data get entity @s UUID[2] 1
execute if score $active_set ff_game_state matches 1 as @a store result score @s ff_active_uuid_3 run data get entity @s UUID[3] 1

tag @a[tag=ff_active] remove ff_active
execute if score $active_set ff_game_state matches 1 as @a if score @s ff_active_uuid_0 = $active ff_active_uuid_0 if score @s ff_active_uuid_1 = $active ff_active_uuid_1 if score @s ff_active_uuid_2 = $active ff_active_uuid_2 if score @s ff_active_uuid_3 = $active ff_active_uuid_3 run tag @s add ff_active
execute if score $active_set ff_game_state matches 1 unless entity @a[tag=ff_active] run function fossil_frights:game/handle_active_disconnect
