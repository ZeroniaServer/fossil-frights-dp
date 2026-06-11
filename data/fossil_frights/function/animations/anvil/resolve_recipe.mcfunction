scoreboard players set @s ff_anvil_result 0
data remove storage fossil_frights:anvil result
execute if items entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1,sort=nearest] contents minecraft:leather run function fossil_frights:animations/anvil/recipe/leather
execute if items entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1,sort=nearest] contents minecraft:sponge run function fossil_frights:animations/anvil/recipe/sponge
execute if items entity @e[type=minecraft:item_display,tag=ff_anvil_display,distance=..1.5,limit=1,sort=nearest] contents minecraft:iron_ingot run function fossil_frights:animations/anvil/recipe/iron_ingot
