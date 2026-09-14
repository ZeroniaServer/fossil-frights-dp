item replace block 0 0 0 container.0 with air
item replace block 0 0 0 container.0 from entity @s contents
item modify block 0 0 0 container.0 {function:"minecraft:set_count",count:1}
item modify entity @s contents fossil_frights:deduct_1

function fossil_frights:animations/anvil/input
