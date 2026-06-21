clear @s
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
function fossil_frights:items/heists/ice_cannon/equip_guard_hat
loot replace entity @s container.0 loot fossil_frights:items/heists/night_stick
loot replace entity @s container.1 loot fossil_frights:items/heists/ice_cannon_remote
loot replace entity @s container.2 loot fossil_frights:items/heists/glowtrap_placer
loot replace entity @s container.3 loot fossil_frights:items/heists/camera_remote
loot replace entity @s container.4 loot fossil_frights:items/heists/loot_book
loot replace entity @s container.8 loot fossil_frights:items/compass/loot
