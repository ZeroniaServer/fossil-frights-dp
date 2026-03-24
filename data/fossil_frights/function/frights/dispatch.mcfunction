execute if entity @s[tag=ff_fright_sniffer] unless score $sniffer_fright ff_game_state matches 1 run function fossil_frights:frights/sniffer/trigger
