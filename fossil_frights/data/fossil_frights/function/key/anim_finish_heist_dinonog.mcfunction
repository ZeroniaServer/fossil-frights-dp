scoreboard players operation #match ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation #match ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation #match ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation #match ff_active_uuid_3 = @s ff_active_uuid_3

execute as @a[predicate=fossil_frights:player/team/guard,predicate=fossil_frights:entity/match/active] run loot give @s loot fossil_frights:items/storage/dinonog
execute as @a[predicate=fossil_frights:player/team/thief,predicate=fossil_frights:entity/match/active] run loot give @s loot fossil_frights:items/heists/evilnog

scoreboard players reset #match ff_active_uuid_0
scoreboard players reset #match ff_active_uuid_1
scoreboard players reset #match ff_active_uuid_2
scoreboard players reset #match ff_active_uuid_3

kill @s
