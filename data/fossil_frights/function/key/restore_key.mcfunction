tag @s remove ff_key_restore_hand
tag @s remove ff_key_restore_done
execute if items entity @s weapon.mainhand minecraft:echo_shard[custom_data~{ff_key_cooldown:1b}] run tag @s add ff_key_restore_hand
execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key ff_key_cd_cfg
execute if entity @s[tag=ff_key_restore_hand] run function fossil_frights:key/put_ready_in_hand with storage fossil_frights:key
execute if entity @s[tag=ff_key_restore_hand] run tag @s add ff_key_restore_done
data modify storage fossil_frights:key slot set value "weapon.offhand"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.0"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:0b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.1"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:1b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.2"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:2b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.3"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:3b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.4"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:4b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.5"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:5b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.6"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:6b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.7"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:7b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "hotbar.8"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:8b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.0"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:9b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.1"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:10b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.2"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:11b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.3"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:12b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.4"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:13b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.5"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:14b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.6"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:15b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.7"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:16b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.8"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:17b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.9"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:18b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.10"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:19b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.11"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:20b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.12"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:21b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.13"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:22b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.14"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:23b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.15"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:24b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.16"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:25b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.17"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:26b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.18"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:27b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.19"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:28b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.20"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:29b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.21"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:30b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.22"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:31b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.23"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:32b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.24"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:33b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.25"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:34b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
data modify storage fossil_frights:key slot set value "inventory.26"
execute unless entity @s[tag=ff_key_restore_done] if data entity @s {Inventory:[{Slot:35b,id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_key_cooldown:1b}}}]} run function fossil_frights:key/restore_slot with storage fossil_frights:key
clear @s minecraft:echo_shard[minecraft:custom_data={ff_key_cooldown:1b}]
tag @s remove ff_key_restore_hand
tag @s remove ff_key_restore_done
