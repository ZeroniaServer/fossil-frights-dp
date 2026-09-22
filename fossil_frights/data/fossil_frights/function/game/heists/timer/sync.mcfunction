
execute unless score $heist_stopwatch_active ff_heist matches 1 run return 0
execute store success score $heist_stopwatch_active ff_heist store result score $heist_query_now ff_heist run stopwatch query fossil_frights:heist_round 20
execute unless score $heist_stopwatch_active ff_heist matches 1 run return 0
scoreboard players operation $heist_elapsed ff_heist = $heist_query_now ff_heist
scoreboard players operation $heist_elapsed ff_heist -= $heist_elapsed_offset ff_heist
scoreboard players operation $heist_timer ff_heist = #heist_full ff_heist
scoreboard players operation $heist_timer ff_heist -= $heist_elapsed ff_heist
execute if score $heist_timer ff_heist matches ..-1 run scoreboard players set $heist_timer ff_heist 0
execute store result bossbar fossil_frights:bossbar value run scoreboard players get $heist_elapsed ff_heist
