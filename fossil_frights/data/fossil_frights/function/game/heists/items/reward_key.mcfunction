execute store result storage fossil_frights:key seconds float 0.05 run compute default integer fossil_frights:items/key/cooldown_length
scoreboard players set @s ff_key_cooldown 0
function fossil_frights:key/give_active with storage fossil_frights:key
