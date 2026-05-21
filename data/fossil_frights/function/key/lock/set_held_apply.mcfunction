data modify entity @s Item.components."minecraft:custom_data".ff_reward set from storage fossil_frights:lock reward
tag @s add ff_lock_flash
scoreboard players set @s ff_lock_flash 10
team join ff_lock_flash_green @s
data merge entity @s {Glowing:1b}
