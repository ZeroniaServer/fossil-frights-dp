scoreboard players operation @s ff_parkour_min = @s ff_parkour_time
scoreboard players operation @s ff_parkour_min /= #100 ff_parkour_math
scoreboard players operation @s ff_parkour_min /= #60 ff_parkour_math
scoreboard players operation @s ff_parkour_sec = @s ff_parkour_time
scoreboard players operation @s ff_parkour_sec /= #100 ff_parkour_math
execute if score @s ff_parkour_min matches 1.. run scoreboard players operation @s ff_parkour_sec %= #60 ff_parkour_math
scoreboard players operation @s ff_parkour_sec_tens = @s ff_parkour_sec
scoreboard players operation @s ff_parkour_sec_tens /= #10 ff_parkour_math
scoreboard players operation @s ff_parkour_sec_ones = @s ff_parkour_sec
scoreboard players operation @s ff_parkour_sec_ones %= #10 ff_parkour_math
scoreboard players operation @s ff_parkour_centi = @s ff_parkour_time
scoreboard players operation @s ff_parkour_centi %= #100 ff_parkour_math
scoreboard players operation @s ff_parkour_centi_tens = @s ff_parkour_centi
scoreboard players operation @s ff_parkour_centi_tens /= #10 ff_parkour_math
scoreboard players operation @s ff_parkour_centi_ones = @s ff_parkour_centi
scoreboard players operation @s ff_parkour_centi_ones %= #10 ff_parkour_math
execute if score @s ff_parkour_min matches 1.. run title @s actionbar [{"text":"Parkour Time: ","color":"yellow"},{"score":{"name":"@s","objective":"ff_parkour_min"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@s","objective":"ff_parkour_sec_tens"},"color":"white"},{"score":{"name":"@s","objective":"ff_parkour_sec_ones"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"ff_parkour_centi_tens"},"color":"white"},{"score":{"name":"@s","objective":"ff_parkour_centi_ones"},"color":"white"},{"text":"s","color":"white"}]
execute unless score @s ff_parkour_min matches 1.. run title @s actionbar [{"text":"Parkour Time: ","color":"yellow"},{"score":{"name":"@s","objective":"ff_parkour_sec"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"ff_parkour_centi_tens"},"color":"white"},{"score":{"name":"@s","objective":"ff_parkour_centi_ones"},"color":"white"},{"text":"s","color":"white"}]
