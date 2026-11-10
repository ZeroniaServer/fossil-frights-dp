execute unless score $h_darkness ff_hallucination matches 1 run function fossil_frights:admin/menu/mark_modified
execute unless score $h_darkness ff_hallucination matches 1 if predicate fossil_frights:game_state/game_running run scoreboard players set #dinonog_bar ff_dinonog 0
execute unless score $h_darkness ff_hallucination matches 1 if predicate fossil_frights:game_state/game_running run scoreboard players set #h_was_zero ff_hallucination 1
execute unless score $h_darkness ff_hallucination matches 1 if predicate fossil_frights:game_state/game_running run scoreboard players set #h_timer ff_hallucination 0
execute unless score $h_darkness ff_hallucination matches 1 if predicate fossil_frights:game_state/game_running run function fossil_frights:frights/dinonog/update
execute unless score $h_darkness ff_hallucination matches 1 run function fossil_frights:hallucination/select/darkness
