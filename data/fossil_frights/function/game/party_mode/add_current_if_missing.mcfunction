scoreboard players set $party_current_member ff_game_state 0
data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
tag @s add ff_party_check_source
execute as @e[type=minecraft:marker,tag=ff_run_member] if score @s ff_active_uuid_0 = @a[tag=ff_party_check_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_party_check_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_party_check_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_party_check_source,limit=1] ff_active_uuid_3 run scoreboard players set $party_current_member ff_game_state 1
tag @s remove ff_party_check_source
execute if score $party_current_member ff_game_state matches 0 run function fossil_frights:game/party_mode/add_current
