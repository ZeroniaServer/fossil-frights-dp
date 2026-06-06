scoreboard players add @s ff_ice_freeze_age 1
execute as @a[tag=ff_ice_frozen,distance=..2.5,sort=nearest,limit=1] run tp @s ~ ~-1.0 ~
execute if score @s ff_ice_freeze_age matches 17 run data merge entity @s {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"1"}}}
execute if score @s ff_ice_freeze_age matches 34 run data merge entity @s {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}}
execute if score @s ff_ice_freeze_age matches 50.. run function fossil_frights:items/heists/ice_cannon/freeze_end
