function fossil_frights:player/respawn_active
clear @s minecraft:echo_shard[minecraft:custom_data={ff_key:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data={ff_key_cooldown:1b}]
clear @s minecraft:echo_shard[minecraft:custom_data={ff_key_disabled:1b}]
function fossil_frights:key/start_cooldown
