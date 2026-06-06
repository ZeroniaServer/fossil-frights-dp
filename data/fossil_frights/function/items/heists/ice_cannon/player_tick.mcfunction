scoreboard players add @s ff_ice_cannon_cd 0
scoreboard players add @s ff_glowtrap_cd 0
execute if score @s ff_ice_cannon_cd matches 1.. run scoreboard players remove @s ff_ice_cannon_cd 1
execute if score @s ff_glowtrap_cd matches 1.. run scoreboard players remove @s ff_glowtrap_cd 1
execute if entity @s[tag=ff_ice_cannon_shooter] unless score @s ff_ice_cannon_cd matches 1.. run tag @s remove ff_ice_cannon_shooter
execute if entity @s[tag=ff_ice_cannon_remote_restore_pending] run loot replace entity @s weapon.mainhand loot fossil_frights:items/heists/ice_cannon_remote
tag @s remove ff_ice_cannon_remote_restore_pending
execute if entity @s[tag=ff_glowtrap_placer_restore_pending] run loot replace entity @s weapon.mainhand loot fossil_frights:items/heists/glowtrap_placer
tag @s remove ff_glowtrap_placer_restore_pending
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{ff_heist_ice_cannon_remote:1b}}}} unless data entity @s {Inventory:[{Slot:103b}]} run function fossil_frights:items/heists/ice_cannon/equip_cannon
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{ff_heist_ice_cannon_remote:1b}}}} if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_heist_security_hat:1b}] run function fossil_frights:items/heists/ice_cannon/equip_cannon
execute unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{ff_heist_ice_cannon_remote:1b}}}} if items entity @s armor.head minecraft:carved_pumpkin[minecraft:custom_data~{ff_heist_ice_cannon_hat:1b}] run function fossil_frights:items/heists/ice_cannon/equip_guard_hat
