tag @s remove ff_key_restore_hand
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}} run tag @s add ff_key_restore_hand
execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key ff_key_cd_cfg
execute if entity @s[tag=ff_key_restore_hand] run function fossil_frights:key/put_active_in_hand with storage fossil_frights:key
execute unless entity @s[tag=ff_key_restore_hand] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={ff_key_cooldown:1b}] 1
execute unless entity @s[tag=ff_key_restore_hand] run function fossil_frights:key/give with storage fossil_frights:key
tag @s remove ff_key_restore_hand
