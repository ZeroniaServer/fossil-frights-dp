tag @a remove ff_heist_stat_winner
execute as @a[team=ff_thief] if score @s ff_heist_loot_captured_round = $heist_loot_captured_round_max ff_heist_loot_captured_round run tag @s add ff_heist_stat_winner
tellraw @a [{"translate":"ff.heists.stats.most_loot_captured","color":"yellow","with":[{"selector":"@a[tag=ff_heist_stat_winner]","separator":{"translate":"ff.separator"},"color":"white"},{"score":{"name":"$heist_loot_captured_round_max","objective":"ff_heist_loot_captured_round"},"color":"white"}]}]
tag @a remove ff_heist_stat_winner
