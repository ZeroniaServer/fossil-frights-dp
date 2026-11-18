scoreboard players operation #dinonog_frame ff_dinonog = #dinonog_max ff_dinonog
scoreboard players operation #dinonog_frame ff_dinonog -= #dinonog_display ff_dinonog
scoreboard players operation #dinonog_frame ff_dinonog *= #dinonog_glyph_max ff_dinonog
scoreboard players operation #dinonog_frame ff_dinonog /= #dinonog_max ff_dinonog
execute unless score #dinonog_frame ff_dinonog = #dinonog_last_frame ff_dinonog run function fossil_frights:frights/dinonog/update_glyph
execute if score #dinonog_bar ff_evilnog matches 1.. if score #dinonog_evil_state ff_evilnog matches 0 run function fossil_frights:frights/dinonog/update_glyph
execute if score #dinonog_bar ff_evilnog matches 0 if score #dinonog_evil_state ff_evilnog matches 1 run function fossil_frights:frights/dinonog/update_glyph
execute if score #dinonog_bar ff_evilnog matches 1.. run scoreboard players set #dinonog_evil_state ff_evilnog 1
execute if score #dinonog_bar ff_evilnog matches 0 run scoreboard players set #dinonog_evil_state ff_evilnog 0
scoreboard players operation #dinonog_last_frame ff_dinonog = #dinonog_frame ff_dinonog
execute store result bossbar fossil_frights:dinonog value run scoreboard players get #dinonog_display ff_dinonog

execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_active_count ff_hallucination matches 1.. run function fossil_frights:hallucination/clear
execute if score #dinonog_bar ff_dinonog matches 1.. if score #h_was_zero ff_hallucination matches 1 run function fossil_frights:hallucination/clear
