advancement revoke @s only fossil_frights:items/confetti_remote/consume
execute unless entity @s[gamemode=adventure] run return 0
scoreboard players set @s ff_confetti_uses 0
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=1] run scoreboard players set @s ff_confetti_uses 1
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=2] run scoreboard players set @s ff_confetti_uses 2
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=3] run scoreboard players set @s ff_confetti_uses 3
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=4] run scoreboard players set @s ff_confetti_uses 4
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=5] run scoreboard players set @s ff_confetti_uses 5
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=6] run scoreboard players set @s ff_confetti_uses 6
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=7] run scoreboard players set @s ff_confetti_uses 7
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=8] run scoreboard players set @s ff_confetti_uses 8
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=9] run scoreboard players set @s ff_confetti_uses 9
execute if items entity @s weapon.mainhand minecraft:diamond_hoe[minecraft:custom_data~{ff_confetti_remote:true},minecraft:damage=10] run scoreboard players set @s ff_confetti_uses 10
execute at @s run function fossil_frights:items/other/confetti_cannon/fire
scoreboard players add @s ff_confetti_uses 1
execute if score @s ff_confetti_uses matches 10.. run function fossil_frights:items/other/confetti_cannon/break_remote
execute if score @s ff_confetti_uses matches ..9 run tag @s add ff_confetti_remote_update_pending
