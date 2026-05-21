advancement revoke @s only fossil_frights:confetti_remote_consumed
execute unless entity @s[gamemode=adventure] run return 0
execute at @s run function fossil_frights:seasonal/playtests/confetti/fire
scoreboard players add @s ff_confetti_uses 1
execute if score @s ff_confetti_uses matches 20.. run function fossil_frights:seasonal/playtests/confetti/break_remote
execute if score @s ff_confetti_uses matches ..19 run function fossil_frights:seasonal/playtests/confetti/update_remote_damage
