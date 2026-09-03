scoreboard players set #impact ff_dummy 0
tag @a remove ff_ice_cannon_owner_match
execute as @a if score @s ff_active_uuid_0 = #this_ice_cannon_projectile ff_active_uuid_0 if score @s ff_active_uuid_1 = #this_ice_cannon_projectile ff_active_uuid_1 if score @s ff_active_uuid_2 = #this_ice_cannon_projectile ff_active_uuid_2 if score @s ff_active_uuid_3 = #this_ice_cannon_projectile ff_active_uuid_3 run tag @s add ff_ice_cannon_owner_match
execute positioned ~-0.45 ~-0.55 ~-0.45 if entity @a[limit=1,gamemode=!spectator,tag=!ff_ice_cannon_owner_match,dx=0.9,dy=1.1,dz=0.9] run scoreboard players set #impact ff_dummy 1
tag @a remove ff_ice_cannon_owner_match
execute if score #impact ff_dummy matches 1 run return 1
return 0
