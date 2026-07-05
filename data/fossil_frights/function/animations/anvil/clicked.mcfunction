advancement revoke @s only fossil_frights:anvil_click
execute unless score $game_running ff_game_state matches 1 run return 0
execute positioned 39 81 62 if entity @e[type=minecraft:marker,tag=anvil,tag=!ff_anvil_busy,tag=!ff_anvil_has_output,distance=..0.1,limit=1] if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"leather"}] run function fossil_frights:animations/anvil/clicked/leather
execute positioned 39 81 62 if entity @e[type=minecraft:marker,tag=anvil,tag=!ff_anvil_busy,tag=!ff_anvil_has_output,distance=..0.1,limit=1] if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"sponge"}] run function fossil_frights:animations/anvil/clicked/sponge
execute positioned 39 81 62 if entity @e[type=minecraft:marker,tag=anvil,tag=!ff_anvil_busy,tag=!ff_anvil_has_output,distance=..0.1,limit=1] if items entity @s weapon.mainhand *[minecraft:custom_data~{itemID:"scrap_metal"}] run function fossil_frights:animations/anvil/clicked/scrap_metal
