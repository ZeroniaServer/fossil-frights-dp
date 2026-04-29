function fossil_frights:tasks/hard/feed_the_bats/clear_timer
clear @s minecraft:spider_eye
playsound minecraft:entity.bee.loop_aggressive master @s ~ ~ ~ 0.7 1.5
tellraw @s ["<",{"color":"red","text":"Ladybug"},"> Woohoo! I escaped"]
