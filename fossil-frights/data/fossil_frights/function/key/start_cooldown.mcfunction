scoreboard players operation @s ff_key_cooldown = $key_cooldown_length ff_key_cd_cfg
execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key_cooldown_length ff_key_cd_cfg
function fossil_frights:key/put_cooldown_in_hand with storage fossil_frights:key
