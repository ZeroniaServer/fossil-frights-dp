tag @s remove ff_key_restore_hand
tag @s remove ff_key_restore_done
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run tag @s add ff_key_restore_hand
execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key ff_key_cd_cfg
execute if entity @s[tag=ff_key_restore_hand] run function fossil_frights:key/put_ready_in_hand with storage fossil_frights:key
execute if entity @s[tag=ff_key_restore_hand] run tag @s add ff_key_restore_done
data modify storage fossil_frights:key slot set value "weapon.offhand"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.0"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.0 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.1"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.1 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.2"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.2 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.3"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.3 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.4"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.4 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.5"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.5 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.6"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.6 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.7"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.7 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.8"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.8 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.0"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.9 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.1"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.10 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.2"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.11 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.3"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.12 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.4"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.13 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.5"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.14 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.6"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.15 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.7"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.16 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.8"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.17 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.9"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.18 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.10"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.19 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.11"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.20 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.12"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.21 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.13"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.22 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.14"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.23 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.15"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.24 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.16"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.25 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.17"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.26 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.18"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.27 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.19"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.28 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.20"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.29 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.21"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.30 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.22"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.31 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.23"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.32 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.24"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.33 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.25"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.34 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.26"
execute unless entity @s[tag=ff_key_restore_done] if items entity @s container.35 minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run function fossil_frights:key/restore_slot with storage fossil_frights:key
clear @s minecraft:echo_shard[minecraft:custom_data~{ff_key_cooldown:1b}]
tag @s remove ff_key_restore_hand
tag @s remove ff_key_restore_done
