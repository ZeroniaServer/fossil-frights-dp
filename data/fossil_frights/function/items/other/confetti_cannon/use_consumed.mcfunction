advancement revoke @s only fossil_frights:confetti_remote_consumed
execute unless entity @s[gamemode=adventure] run return 0
execute store result score @s ff_confetti_uses run data get entity @s SelectedItem.components."minecraft:damage" 1
execute at @s run function fossil_frights:items/other/confetti_cannon/fire
scoreboard players add @s ff_confetti_uses 1
execute if score @s ff_confetti_uses matches 10.. run function fossil_frights:items/other/confetti_cannon/break_remote
execute if score @s ff_confetti_uses matches ..9 run tag @s add ff_confetti_remote_update_pending
