scoreboard players operation @s ff_temple_run_min = @s ff_temple_run_time
scoreboard players operation @s ff_temple_run_min /= #100 ff_temple_run_math
scoreboard players operation @s ff_temple_run_min /= #60 ff_temple_run_math
scoreboard players operation @s ff_temple_run_sec = @s ff_temple_run_time
scoreboard players operation @s ff_temple_run_sec /= #100 ff_temple_run_math
execute if score @s ff_temple_run_min matches 1.. run scoreboard players operation @s ff_temple_run_sec %= #60 ff_temple_run_math
scoreboard players operation @s ff_temple_run_sec_tens = @s ff_temple_run_sec
scoreboard players operation @s ff_temple_run_sec_tens /= #10 ff_temple_run_math
scoreboard players operation @s ff_temple_run_sec_ones = @s ff_temple_run_sec
scoreboard players operation @s ff_temple_run_sec_ones %= #10 ff_temple_run_math
scoreboard players operation @s ff_temple_run_centi = @s ff_temple_run_time
scoreboard players operation @s ff_temple_run_centi %= #100 ff_temple_run_math
scoreboard players operation @s ff_temple_run_centi_tens = @s ff_temple_run_centi
scoreboard players operation @s ff_temple_run_centi_tens /= #10 ff_temple_run_math
scoreboard players operation @s ff_temple_run_centi_ones = @s ff_temple_run_centi
scoreboard players operation @s ff_temple_run_centi_ones %= #10 ff_temple_run_math
execute if score @s ff_temple_run_min matches 1.. run title @s actionbar [{"translate":"ff.lobby.temple_run.actionbar","color":"yellow","with":[{"translate":"%s:%s%s.%s%s","color":"white","with":[{"score":{"name":"@s","objective":"ff_temple_run_min"}},{"score":{"name":"@s","objective":"ff_temple_run_sec_tens"}},{"score":{"name":"@s","objective":"ff_temple_run_sec_ones"}},{"score":{"name":"@s","objective":"ff_temple_run_centi_tens"}},{"score":{"name":"@s","objective":"ff_temple_run_centi_ones"}}]}]}]
execute unless score @s ff_temple_run_min matches 1.. run title @s actionbar [{"translate":"ff.lobby.temple_run.actionbar","color":"yellow","with":[{"translate":"%s.%s%s","color":"white","with":[{"score":{"name":"@s","objective":"ff_temple_run_sec"}},{"score":{"name":"@s","objective":"ff_temple_run_centi_tens"}},{"score":{"name":"@s","objective":"ff_temple_run_centi_ones"}}]}]}]
