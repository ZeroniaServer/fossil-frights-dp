execute as @a[scores={ff_damage_cooldown_until_timestamp=-2147483648..}] unless predicate fossil_frights:player/damage_cooldown_active run scoreboard players reset @s ff_damage_cooldown_until_timestamp
execute as @a[scores={ff_fire_damage_cooldown_until_timestamp=-2147483648..}] unless predicate fossil_frights:player/fire_damage_cooldown_active run scoreboard players reset @s ff_fire_damage_cooldown_until_timestamp

gamerule drowning_damage true
execute as @a[predicate=fossil_frights:entity/stepping_on_magma_block] unless score @s ff_damage_cooldown_until_timestamp matches -2147483648.. run damage @s 1 minecraft:hot_floor
execute as @a[predicate=fossil_frights:entity/stepping_on_lit_campfire] unless score @s ff_damage_cooldown_until_timestamp matches -2147483648.. run damage @s 1 minecraft:campfire
execute as @a[predicate=fossil_frights:entity/is_on_fire] unless score @s ff_damage_cooldown_until_timestamp matches -2147483648.. unless score @s ff_fire_damage_cooldown_until_timestamp matches -2147483648.. run damage @s 1 minecraft:on_fire
gamerule drowning_damage false

schedule function fossil_frights:player/damage/tick 1t
