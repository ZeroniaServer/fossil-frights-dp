scoreboard players operation #dinonog_frame ff_dinonog = #dinonog_max ff_dinonog
scoreboard players operation #dinonog_frame ff_dinonog -= #dinonog_bar ff_dinonog
scoreboard players operation #dinonog_frame ff_dinonog *= #dinonog_glyph_max ff_dinonog
scoreboard players operation #dinonog_frame ff_dinonog /= #dinonog_max ff_dinonog
execute unless score #dinonog_frame ff_dinonog = #dinonog_last_frame ff_dinonog run function fossil_frights:frights/dinonog/update_glyph
scoreboard players operation #dinonog_last_frame ff_dinonog = #dinonog_frame ff_dinonog
execute store result bossbar fossil_frights:dinonog value run scoreboard players get #dinonog_bar ff_dinonog

execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_active_count ff_hallucination matches 1.. run function fossil_frights:hallucination/clear
execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_was_zero ff_hallucination matches 1 run function fossil_frights:hallucination/clear
