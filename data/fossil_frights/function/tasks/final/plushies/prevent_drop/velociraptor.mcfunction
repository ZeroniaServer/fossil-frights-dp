execute unless data entity @s Thrower run kill @s
execute store result score $plushie_drop ff_active_uuid_0 run data get entity @s Thrower[0] 1
execute store result score $plushie_drop ff_active_uuid_1 run data get entity @s Thrower[1] 1
execute store result score $plushie_drop ff_active_uuid_2 run data get entity @s Thrower[2] 1
execute store result score $plushie_drop ff_active_uuid_3 run data get entity @s Thrower[3] 1
execute as @a[tag=obtained_velociraptor_plushie] if score @s ff_active_uuid_0 = $plushie_drop ff_active_uuid_0 if score @s ff_active_uuid_1 = $plushie_drop ff_active_uuid_1 if score @s ff_active_uuid_2 = $plushie_drop ff_active_uuid_2 if score @s ff_active_uuid_3 = $plushie_drop ff_active_uuid_3 run function fossil_frights:tasks/final/plushies/give/velociraptor
kill @s
