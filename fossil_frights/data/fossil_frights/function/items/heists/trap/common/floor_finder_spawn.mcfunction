summon minecraft:armor_stand ~ ~ ~ {Tags:["ff_trap_floor_finder"],Motion:[0d,-10d,0d],Small:true,Silent:true,Invulnerable:true,attributes:[{id:"minecraft:scale",base:0.0625}]}
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,sort=nearest,limit=1,distance=..0.1] ff_trap_type = @s ff_trap_selected
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:armor_stand,tag=ff_trap_floor_finder,sort=nearest,limit=1,distance=..0.1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @s add ff_trap_place_pending
schedule function fossil_frights:items/heists/trap/common/floor_finder_check 1t append
