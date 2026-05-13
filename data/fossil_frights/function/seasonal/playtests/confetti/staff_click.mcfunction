advancement revoke @s only fossil_frights:seasonal/playtests/confetti/staff_click
execute if entity @s[tag=ff_seasonal_confetti_cannon] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Thanks for joining us to playtest Fossil Frights","color":"white"}]
execute if entity @s[tag=ff_seasonal_confetti_cannon] run return 0
tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Thanks for play testing, enjoy our limited time confetti cannon. You only get one, don't use it all at once.","color":"white"}]
tag @s add ff_seasonal_confetti_cannon
scoreboard players add @s ff_confetti_use 0
scoreboard players set @s ff_confetti_uses 0
execute store result score @s ff_confetti_seen run scoreboard players get @s ff_confetti_use
function fossil_frights:seasonal/playtests/confetti/give_remote
