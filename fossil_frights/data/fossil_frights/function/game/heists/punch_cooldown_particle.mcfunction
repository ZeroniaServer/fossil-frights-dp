particle minecraft:small_gust ~ ~0.05 ~ 0.12 0.02 0.12 0 2
scoreboard players set @s ff_heist_punch_fx 20
execute if score @s ff_heist_stolen_keys matches 1 run scoreboard players set @s ff_heist_punch_fx 15
execute if score @s ff_heist_stolen_keys matches 2 run scoreboard players set @s ff_heist_punch_fx 10
execute if score @s ff_heist_stolen_keys matches 3.. run scoreboard players set @s ff_heist_punch_fx 5
