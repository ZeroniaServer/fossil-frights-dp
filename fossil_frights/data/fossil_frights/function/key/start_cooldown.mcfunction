execute store result score @s ff_key_cooldown store result storage fossil_frights:key seconds float 0.05 run compute default integer fossil_frights:items/key/cooldown_length
execute if items entity @s fossil_frights:player/filtered/heist_guard_key * run item modify entity @s fossil_frights:player/filtered/heist_guard_key fossil_frights:game/heists/key/set_cooldown_model
execute unless items entity @s fossil_frights:player/filtered/heist_guard_key * run function fossil_frights:key/put_cooldown_in_hand with storage fossil_frights:key
