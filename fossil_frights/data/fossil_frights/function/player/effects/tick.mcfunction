execute if predicate fossil_frights:player/is_playing_temple_run unless entity @s[tag=ff_temple_run_knockback_override] run attribute @s minecraft:knockback_resistance base reset
execute if predicate fossil_frights:player/is_playing_temple_run run tag @s add ff_temple_run_knockback_override
execute unless predicate fossil_frights:player/is_playing_temple_run if entity @s[tag=ff_temple_run_knockback_override,tag=ff_damage_guard] run attribute @s minecraft:knockback_resistance base set 1
execute unless predicate fossil_frights:player/is_playing_temple_run if entity @s[tag=ff_temple_run_knockback_override] run tag @s remove ff_temple_run_knockback_override
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless predicate fossil_frights:entity/effects/resistance run function fossil_frights:player/protection_enable
