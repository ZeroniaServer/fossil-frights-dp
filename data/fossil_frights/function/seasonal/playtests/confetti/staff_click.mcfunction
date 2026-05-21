advancement revoke @s only fossil_frights:seasonal/playtests/confetti/staff_click
tag @s remove ff_confetti_remote_replaced
execute if entity @s[tag=ff_seasonal_confetti_cannon] unless data entity @s {Inventory:[{id:"minecraft:echo_shard",components:{"minecraft:custom_data":{ff_confetti_remote:1b}}}]} run tag @s add ff_confetti_remote_replaced
execute if entity @s[tag=ff_confetti_remote_replaced] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Looks like you lost your remote. Here's a replacement.","color":"white"}]
execute if entity @s[tag=ff_confetti_remote_replaced] run function fossil_frights:seasonal/playtests/confetti/give_remote
execute if entity @s[tag=ff_confetti_remote_replaced] run return 0
execute if entity @s[tag=ff_seasonal_confetti_cannon] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Sorry you only get one until we reset stats, but go watch the trailer! ","color":"white"},{"text":"Watch on YouTube","color":"red","underlined":true,"click_event":{"action":"open_url","url":"https://youtu.be/McQPKYIATR0"},"hover_event":{"action":"show_text","value":{"text":"Click to watch the trailer on YouTube","color":"red"}}}]
execute if entity @s[tag=ff_seasonal_confetti_cannon] run return 0
tellraw @s ["",{"text":"<","color":"white"},{"text":"Museum Staff","color":"yellow"},{"text":"> Here's one confetti cannon for now. You can get a new one if someone wins!","color":"white"}]
tag @s add ff_seasonal_confetti_cannon
scoreboard players set @s ff_confetti_uses 0
function fossil_frights:seasonal/playtests/confetti/give_remote
