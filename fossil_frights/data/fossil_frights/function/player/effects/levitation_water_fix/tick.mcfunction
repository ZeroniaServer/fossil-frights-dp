execute as @a[tag=ff_levitation_water_fix] unless entity @s[predicate=fossil_frights:entity/effects/levitation_more_than_2_ticks_remaining,predicate=fossil_frights:entity/touching_water_fluid] run attribute @s minecraft:gravity modifier remove fossil_frights:levitation_water_fix
tag @a remove ff_levitation_water_fix
execute as @a[gamemode=!spectator,predicate=fossil_frights:entity/effects/levitation_more_than_2_ticks_remaining,predicate=fossil_frights:entity/touching_water_fluid] run tag @s add ff_levitation_water_fix

execute as @a[tag=ff_levitation_water_fix] run attribute @s minecraft:gravity modifier add fossil_frights:levitation_water_fix -5 add_multiplied_total

execute if entity @a[limit=1,tag=ff_levitation_water_fix] run return run schedule function fossil_frights:player/effects/levitation_water_fix/tick 1t
execute if entity @a[limit=1,gamemode=!spectator,predicate=fossil_frights:entity/effects/levitation] run return run schedule function fossil_frights:player/effects/levitation_water_fix/tick 1t
