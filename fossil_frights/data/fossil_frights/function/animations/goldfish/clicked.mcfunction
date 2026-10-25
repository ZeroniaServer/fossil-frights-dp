advancement revoke @s only fossil_frights:misc/goldfish_click
execute if score $goldfish_clicked ff_dummy matches 1.. run return fail
scoreboard players set $goldfish_clicked ff_dummy 1
execute as @e[limit=1,type=minecraft:item_display,tag=goldfish] at @s run function fossil_frights:animations/goldfish/squish
schedule function fossil_frights:animations/goldfish/reset 10t append