advancement revoke @s only fossil_frights:seasonal/playtests/confetti/staff_click
execute if entity @s[tag=ff_seasonal_confetti_cannon] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Sorry you only get one until we reset stats, but go watch the trailer! ","color":"white"},{"text":"Watch on YouTube","color":"red","underlined":true,"click_event":{"action":"open_url","url":"https://youtu.be/McQPKYIATR0"},"hover_event":{"action":"show_text","value":{"text":"Click to watch the trailer on YouTube","color":"red"}}}]
execute if entity @s[tag=ff_seasonal_confetti_cannon] run return 0
tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Here's one confetti cannon for now. You can get a new one if someone wins!","color":"white"}]
tag @s add ff_seasonal_confetti_cannon
scoreboard players add @s ff_confetti_use 0
scoreboard players set @s ff_confetti_uses 0
execute store result score @s ff_confetti_seen run scoreboard players get @s ff_confetti_use
function fossil_frights:seasonal/playtests/confetti/give_remote
