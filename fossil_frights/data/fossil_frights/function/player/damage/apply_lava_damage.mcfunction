advancement revoke @s only fossil_frights:damage/apply_lava_damage

gamerule drowning_damage true
execute unless score @s ff_damage_cooldown_until_timestamp matches -2147483648.. run damage @s 4 minecraft:lava
gamerule drowning_damage false
