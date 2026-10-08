scoreboard players set #thrown_by_player ff_dummy 0
execute on origin if entity @s[type=player] if predicate fossil_frights:player/is_playing run scoreboard players set #thrown_by_player ff_dummy 1
execute if score #thrown_by_player ff_dummy matches 1 unless predicate fossil_frights:game_state/heist_mode_active if score $feed_the_bats_sel ff_task_state matches 1 unless score $feed_the_bats_done ff_task_state matches 1 if score @s ff_bat_bug_timer matches 1.. positioned 25 106 87 if entity @s[distance=..3] on origin run function fossil_frights:tasks/hard/feed_the_bats/complete
