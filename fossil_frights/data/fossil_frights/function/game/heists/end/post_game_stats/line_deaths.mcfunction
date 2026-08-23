tag @a remove ff_heist_stat_winner
execute as @a[tag=ff_heist_stat_participant] if score @s ff_heist_deaths_round = $heist_deaths_round_max ff_heist_deaths_round run tag @s add ff_heist_stat_winner
tellraw @a [{"translate":"ff.heists.stats.most_deaths","color":"yellow","with":[{"selector":"@a[tag=ff_heist_stat_winner]","separator":{"translate":"ff.separator"},"color":"white"},{"score":{"name":"$heist_deaths_round_max","objective":"ff_heist_deaths_round"},"color":"white"}]}]
tag @a remove ff_heist_stat_winner
