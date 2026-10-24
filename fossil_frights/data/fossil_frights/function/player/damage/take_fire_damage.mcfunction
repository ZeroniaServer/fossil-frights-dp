advancement revoke @s only fossil_frights:damage/take_fire_damage
execute store result score @s ff_fire_damage_cooldown_until_timestamp run compute default integer {type:"minecraft:add",inputs:["fossil_frights:gametime",20]}
