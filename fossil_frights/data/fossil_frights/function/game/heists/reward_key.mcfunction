execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key_cooldown_length ff_key_cd_cfg
scoreboard players set @s ff_key_cooldown 0
function fossil_frights:key/give_active with storage fossil_frights:key
