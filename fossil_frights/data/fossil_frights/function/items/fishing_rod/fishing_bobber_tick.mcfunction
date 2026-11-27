execute on origin run tag @s add ff_fishing_rod.origin

scoreboard players set #caster_is_frozen ff_dummy 0
execute store success score #caster_is_frozen ff_dummy on origin if entity @s[tag=ff_ice_frozen]

execute if score #caster_is_frozen ff_dummy matches 1 run kill @s
execute if score #caster_is_frozen ff_dummy matches 0 unless predicate fossil_frights:entity/on_ground run function fossil_frights:items/fishing_rod/fishing_bobber_tick

execute on origin run tag @s remove ff_fishing_rod.origin
