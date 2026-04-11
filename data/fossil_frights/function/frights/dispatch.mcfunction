execute if entity @s[tag=ff_fright_sniffer] unless score $sniffer_fright ff_game_state matches 1 run function fossil_frights:frights/sniffer/trigger
execute if entity @s[tag=ff_fright_bats] unless score $bats_fright ff_game_state matches 1 run function fossil_frights:frights/bats/trigger
execute if entity @s[tag=ff_fright_creeper] unless score $creeper_fright ff_game_state matches 1 run function fossil_frights:frights/creeper/trigger
execute if entity @s[tag=ff_fright_skeleton] unless score $skeleton_fright ff_game_state matches 1 run function fossil_frights:frights/skeleton/trigger
execute if entity @s[tag=ff_fright_bogged] unless score $bogged_fright ff_game_state matches 1 run function fossil_frights:frights/bogged/trigger
