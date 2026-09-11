scoreboard players remove @s ff_bat_fright_timer 1
execute if score @s ff_bat_fright_timer matches ..0 run function fossil_frights:frights/bats/despawn
