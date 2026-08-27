execute store result storage fossil_frights:rejoin mannequin.u0 int 1 run scoreboard players get @s ff_active_uuid_0
execute store result storage fossil_frights:rejoin mannequin.u1 int 1 run scoreboard players get @s ff_active_uuid_1
execute store result storage fossil_frights:rejoin mannequin.u2 int 1 run scoreboard players get @s ff_active_uuid_2
execute store result storage fossil_frights:rejoin mannequin.u3 int 1 run scoreboard players get @s ff_active_uuid_3
data modify storage fossil_frights:rejoin mannequin.rotation set from entity @s Rotation
function fossil_frights:game/rejoin/ghost/spawn_macro with storage fossil_frights:rejoin mannequin
data modify entity @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] CustomName set from entity @s CustomName
data merge entity @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] run function fossil_frights:util/protect_mannequin
effect give @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] minecraft:resistance infinite 3 true
execute if entity @s[tag=ff_rejoin_frights] run team join ff_guard @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1]
execute if entity @s[tag=ff_rejoin_heists_guard] run team join ff_guard @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1]
execute if entity @s[tag=ff_rejoin_heists_thief] run team join ff_thief @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1]
execute if entity @s[tag=ff_rejoin_heists_guard] run tag @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] add ff_rejoin_heists_guard
execute if entity @s[tag=ff_rejoin_heists_thief] run tag @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] add ff_rejoin_heists_thief
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] ff_active_uuid_0 = @s ff_active_uuid_0
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] ff_active_uuid_1 = @s ff_active_uuid_1
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] ff_active_uuid_2 = @s ff_active_uuid_2
scoreboard players operation @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] ff_active_uuid_3 = @s ff_active_uuid_3
tag @s add ff_rejoin_head_source
tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head] remove ff_rejoin_head_match
execute as @e[type=minecraft:armor_stand,tag=ff_rejoin_head] if score @s ff_active_uuid_0 = @e[type=minecraft:marker,tag=ff_rejoin_head_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @e[type=minecraft:marker,tag=ff_rejoin_head_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @e[type=minecraft:marker,tag=ff_rejoin_head_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @e[type=minecraft:marker,tag=ff_rejoin_head_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_head_match
execute unless entity @s[tag=ff_rejoin_heists_thief] run item replace entity @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] armor.head from entity @e[type=minecraft:armor_stand,tag=ff_rejoin_head_match,limit=1] armor.head
execute if entity @s[tag=ff_rejoin_heists_thief] run loot replace entity @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] armor.head loot fossil_frights:items/heists/invisimask
tag @e[type=minecraft:armor_stand,tag=ff_rejoin_head_match] remove ff_rejoin_head_match
tag @s remove ff_rejoin_head_source
tag @e[type=minecraft:mannequin,tag=ff_rejoin_ghost_new,sort=nearest,limit=1] remove ff_rejoin_ghost_new
function fossil_frights:game/rejoin/ghost/spawn_display
