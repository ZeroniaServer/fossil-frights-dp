tag @a remove ff_heist_stat_winner
execute as @a[team=ff_guard] if score @s ff_heist_thieves_killed_round = $heist_thieves_killed_round_max ff_heist_thieves_killed_round run tag @s add ff_heist_stat_winner
tellraw @a [{"translate":"ff.heists.stats.most_thieves_killed","color":"yellow","with":[{"selector":"@a[tag=ff_heist_stat_winner]","separator":{"translate":"ff.separator"},"color":"white"},{"score":{"name":"$heist_thieves_killed_round_max","objective":"ff_heist_thieves_killed_round"},"color":"white"}]}]
tag @a remove ff_heist_stat_winner
