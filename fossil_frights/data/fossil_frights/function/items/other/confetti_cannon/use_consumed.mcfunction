advancement revoke @s only fossil_frights:items/confetti_remote/consume
execute if entity @s[gamemode=spectator] run return 0
scoreboard players set @s ff_confetti_uses 0
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ff_confetti_remote:true}] run item replace block 0 0 0 container.0 from entity @s weapon.offhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ff_confetti_remote:true}] run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute if items block 0 0 0 container.0 *[minecraft:damage=1] run scoreboard players set @s ff_confetti_uses 1
execute if items block 0 0 0 container.0 *[minecraft:damage=2] run scoreboard players set @s ff_confetti_uses 2
execute if items block 0 0 0 container.0 *[minecraft:damage=3] run scoreboard players set @s ff_confetti_uses 3
execute if items block 0 0 0 container.0 *[minecraft:damage=4] run scoreboard players set @s ff_confetti_uses 4
execute if items block 0 0 0 container.0 *[minecraft:damage=5] run scoreboard players set @s ff_confetti_uses 5
execute if items block 0 0 0 container.0 *[minecraft:damage=6] run scoreboard players set @s ff_confetti_uses 6
execute if items block 0 0 0 container.0 *[minecraft:damage=7] run scoreboard players set @s ff_confetti_uses 7
execute if items block 0 0 0 container.0 *[minecraft:damage=8] run scoreboard players set @s ff_confetti_uses 8
execute if items block 0 0 0 container.0 *[minecraft:damage=9] run scoreboard players set @s ff_confetti_uses 9
execute if items block 0 0 0 container.0 *[minecraft:damage=10] run scoreboard players set @s ff_confetti_uses 10
execute at @s run function fossil_frights:items/other/confetti_cannon/fire
scoreboard players add @s ff_confetti_uses 1
execute if score @s ff_confetti_uses matches ..9 run tag @s add ff_confetti_remote_update_pending
execute if score @s ff_confetti_uses matches ..9 unless items entity @s weapon.mainhand *[minecraft:custom_data~{ff_confetti_remote:true}] run tag @s add ff_confetti_remote_update_pending.offhand
execute if score @s ff_confetti_uses matches 10.. run function fossil_frights:items/other/confetti_cannon/break_remote
execute if score @s ff_confetti_uses matches 10.. run scoreboard players reset @s ff_confetti_uses
