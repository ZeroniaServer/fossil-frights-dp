execute if entity @s[tag=ff_ice_cannon_remote_restore_pending] run loot replace entity @s weapon.mainhand loot fossil_frights:items/heists/ice_cannon_remote
tag @s remove ff_ice_cannon_remote_restore_pending
execute if entity @s[tag=ff_camera_remote_restore_pending] run loot replace entity @s weapon.mainhand loot fossil_frights:items/heists/camera_remote
tag @s remove ff_camera_remote_restore_pending
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_ice_cannon_remote:1b}] unless items entity @s armor.head * run function fossil_frights:items/heists/ice_cannon/equip_cannon
execute if items entity @s weapon.mainhand *[custom_data~{ff_heist_ice_cannon_remote:1b}] if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_heist_security_hat:1b}] run function fossil_frights:items/heists/ice_cannon/equip_cannon
execute unless items entity @s weapon.mainhand *[custom_data~{ff_heist_ice_cannon_remote:1b}] if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_heist_ice_cannon_hat:1b}] run function fossil_frights:items/heists/ice_cannon/equip_guard_hat
