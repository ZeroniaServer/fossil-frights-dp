advancement revoke @s only fossil_frights:potion_drink
execute if entity @s[tag=ff_active] if score $game_running ff_game_state matches 1 run clear @s minecraft:glass_bottle[!minecraft:custom_data] 1
