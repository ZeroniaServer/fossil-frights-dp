item modify entity @s contents fossil_frights:pizza_box/set_slices/0
execute at @s run data modify entity @n[type=minecraft:interaction,tag=ff_pizza_interaction] response set value false
function fossil_frights:interactions/pizza_box/feedback
