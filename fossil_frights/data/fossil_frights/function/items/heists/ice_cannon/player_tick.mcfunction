execute if entity @s[tag=ff_ice_cannon_remote_restore_pending] run loot replace block 0 0 0 container.0 1 loot fossil_frights:items/heists/ice_cannon_remote
execute if entity @s[tag=ff_ice_cannon_remote_restore_pending] run item fill entity @s fossil_frights:player/filtered/ice_cannon_remote from block 0 0 0 container.0
tag @s remove ff_ice_cannon_remote_restore_pending

execute if entity @s[tag=ff_camera_remote_restore_pending] run loot replace block 0 0 0 container.0 1 loot fossil_frights:items/heists/camera_remote
execute if entity @s[tag=ff_camera_remote_restore_pending] run item fill entity @s fossil_frights:player/filtered/camera_remote from block 0 0 0 container.0
tag @s remove ff_camera_remote_restore_pending

execute if items entity @s weapon.mainhand *[custom_data~{itemID:"ice_cannon_remote"}] unless items entity @s armor.head * run function fossil_frights:items/heists/ice_cannon/equip_cannon
execute if items entity @s weapon.mainhand *[custom_data~{itemID:"ice_cannon_remote"}] if items entity @s armor.head *[minecraft:custom_data~{itemID:"security_guard_hat"}] run function fossil_frights:items/heists/ice_cannon/equip_cannon
execute unless items entity @s weapon.mainhand *[custom_data~{itemID:"ice_cannon_remote"}] if items entity @s armor.head *[minecraft:custom_data~{itemID:"ice_cannon"}] run function fossil_frights:items/heists/ice_cannon/equip_guard_hat
