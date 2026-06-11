scoreboard players remove @s ff_key_cooldown 1
scoreboard players operation @s ff_key_bar = $key ff_key_cd_cfg
scoreboard players operation @s ff_key_bar -= @s ff_key_cooldown
scoreboard players operation @s ff_key_bar *= #twenty ff_key_cd_cfg
scoreboard players operation @s ff_key_bar /= $key ff_key_cd_cfg
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/show_cooldown_bar
execute unless items entity @s weapon.mainhand minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run title @s actionbar ""
execute if score @s ff_key_cooldown matches 0 if predicate fossil_frights:player/inventory/key_cooldown run function fossil_frights:key/restore_key
