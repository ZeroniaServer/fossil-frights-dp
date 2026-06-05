clear @s
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
loot replace entity @s armor.head loot fossil_frights:items/heists/invisimask
loot replace entity @s container.0 loot fossil_frights:items/heists/loot_book
