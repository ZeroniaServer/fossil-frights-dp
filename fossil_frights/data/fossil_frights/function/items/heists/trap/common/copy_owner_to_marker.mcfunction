scoreboard players operation @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] ff_active_uuid_3 = @s ff_active_uuid_3
function fossil_frights:player/util/write_username {to:"entity @e[type=minecraft:marker,tag=ff_trap,sort=nearest,limit=1,distance=..0.35] data.ff_trap.placer_name"}
