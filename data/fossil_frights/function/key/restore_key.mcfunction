tag @s remove ff_key_restore_hand
tag @s remove ff_key_restore_done
execute if items entity @s weapon.mainhand *[custom_data~{itemID:"key_cooldown"}] run tag @s add ff_key_restore_hand
execute store result storage fossil_frights:key seconds float 0.05 run scoreboard players get $key ff_key_cd_cfg
execute if entity @s[tag=ff_key_restore_hand] run function fossil_frights:key/put_ready_in_hand with storage fossil_frights:key
execute if entity @s[tag=ff_key_restore_hand] run tag @s add ff_key_restore_done
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.0 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.0"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.1 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.1"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.2 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.2"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.3 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.3"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.4 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.4"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.5 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.5"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.6 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.6"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.7 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.7"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s hotbar.8 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"hotbar.8"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.0 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.0"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.1 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.1"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.2 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.2"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.3 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.3"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.4 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.4"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.5 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.5"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.6 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.6"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.7 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.7"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.8 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.8"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.9 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.9"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.10 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.10"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.11 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.11"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.12 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.12"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.13 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.13"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.14 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.14"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.15 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.15"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.16 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.16"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.17 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.17"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.18 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.18"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.19 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.19"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.20 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.20"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.21 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.21"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.22 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.22"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.23 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.23"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.24 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.24"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.25 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.25"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s inventory.26 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"inventory.26"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s weapon.offhand *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"weapon.offhand"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s player.cursor *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"player.cursor"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s player.crafting.0 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"player.crafting.0"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s player.crafting.1 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"player.crafting.1"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s player.crafting.2 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"player.crafting.2"}
execute unless entity @s[tag=ff_key_restore_done] if items entity @s player.crafting.3 *[custom_data~{itemID:"key_cooldown"}] run function fossil_frights:key/restore_slot {slot:"player.crafting.3"}
clear @s *[custom_data~{itemID:"key_cooldown"}]
tag @s remove ff_key_restore_hand
tag @s remove ff_key_restore_done
