execute if entity @s[tag=ff_final_reward] run return 0
execute unless data entity @s Thrower run kill @s
data modify storage fossil_frights:nbt uuid set from entity @s Thrower
execute store result score $plushie_drop ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score $plushie_drop ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score $plushie_drop ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score $plushie_drop ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
execute as @a[tag=obtained_pterodactyl_plushie] if score @s ff_active_uuid_0 = $plushie_drop ff_active_uuid_0 if score @s ff_active_uuid_1 = $plushie_drop ff_active_uuid_1 if score @s ff_active_uuid_2 = $plushie_drop ff_active_uuid_2 if score @s ff_active_uuid_3 = $plushie_drop ff_active_uuid_3 run function fossil_frights:tasks/final/plushies/give/pterodactyl
kill @s
