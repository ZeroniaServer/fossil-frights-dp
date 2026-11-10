function fossil_frights:admin/menu/mark_modified
execute if predicate fossil_frights:game_state/game_running run scoreboard players operation #dinonog_bar ff_dinonog = #dinonog_max ff_dinonog
execute if predicate fossil_frights:game_state/game_running run function fossil_frights:frights/dinonog/update
function fossil_frights:hazard/stop/all
function fossil_frights:hallucination/clear
dialog clear @s
