execute unless entity @s[tag=ff_fright_target] run return 0
advancement grant @s only fossil_frights:02_achievements/frightful
scoreboard players set @s ff_fright_timer 0
execute if entity @s[tag=ff_fright_target_sniffer] unless score $sniffer_fright ff_game_state matches 1 run function fossil_frights:frights/sniffer/trigger
execute if entity @s[tag=ff_fright_target_bats] unless score $bats_fright ff_game_state matches 1 run function fossil_frights:frights/bats/trigger
execute if entity @s[tag=ff_fright_target_creeper] unless score $creeper_fright ff_game_state matches 1 run function fossil_frights:frights/creeper/trigger
execute if entity @s[tag=ff_fright_target_skeleton] unless score $skeleton_fright ff_game_state matches 1 run function fossil_frights:frights/skeleton/trigger
execute if entity @s[tag=ff_fright_target_bogged] unless score $bogged_fright ff_game_state matches 1 run function fossil_frights:frights/bogged/trigger
