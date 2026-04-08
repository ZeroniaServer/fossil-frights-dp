execute unless score @s ff_parkour_best matches 1.. run scoreboard players operation @s ff_parkour_best = @s ff_parkour_time
execute if score @s ff_parkour_best matches 1.. if score @s ff_parkour_time < @s ff_parkour_best run scoreboard players operation @s ff_parkour_best = @s ff_parkour_time

