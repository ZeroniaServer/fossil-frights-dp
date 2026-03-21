scoreboard players remove @s ff_key_cooldown 1
scoreboard players operation @s ff_key_bar = $key ff_key_cd_cfg
scoreboard players operation @s ff_key_bar -= @s ff_key_cooldown
scoreboard players operation @s ff_key_bar *= #twenty ff_key_cd_cfg
scoreboard players operation @s ff_key_bar /= $key ff_key_cd_cfg
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}} run function fossil_frights:key/show_cooldown_bar
execute unless data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}} run title @s actionbar ""
execute if score @s ff_key_cooldown matches 0 run function fossil_frights:key/restore_key
