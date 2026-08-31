scoreboard players operation #trap ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation #trap ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation #trap ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation #trap ff_active_uuid_3 = @s ff_active_uuid_3
data remove storage fossil_frights:trap_state trap_data
data modify storage fossil_frights:trap_state trap_data set from entity @s data.ff_trap
$execute as @a[gamemode=!spectator,distance=..$(distance)] run function fossil_frights:items/heists/trap/types/explosive/kill_player
data remove storage fossil_frights:trap_state trap_data
