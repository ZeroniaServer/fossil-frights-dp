clear @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect clear @s minecraft:invisibility
function fossil_frights:game/heists/invisibility_fx/check_player
effect clear @s minecraft:speed
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
function fossil_frights:player/equip_security_hat
function fossil_frights:key/give_waiting
function fossil_frights:key/refresh
