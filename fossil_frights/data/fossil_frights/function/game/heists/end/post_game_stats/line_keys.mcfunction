tag @a remove ff_heist_stat_winner
execute as @a[tag=ff_heist_stat_thief] if score @s ff_heist_keys_stolen_round = $heist_keys_stolen_round_max ff_heist_keys_stolen_round run tag @s add ff_heist_stat_winner
tellraw @a [{"translate":"ff.heists.stats.most_keys_stolen","color":"yellow","with":[{"selector":"@a[tag=ff_heist_stat_winner]","separator":{"translate":"ff.separator"},"color":"white"},{"score":{"name":"$heist_keys_stolen_round_max","objective":"ff_heist_keys_stolen_round"},"color":"white"}]}]
tag @a remove ff_heist_stat_winner
