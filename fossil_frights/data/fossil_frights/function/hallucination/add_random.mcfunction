scoreboard players set #h_active_count ff_hallucination 0
execute if score $h_jolly_curse ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score $h_avalanche ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score $h_darkness ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score $h_freezing_floods ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score $h_snowstorm ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score $h_elf_infestation ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score $h_chimney_smoke ff_hallucination matches 1 run scoreboard players add #h_active_count ff_hallucination 1
execute if score #h_active_count ff_hallucination matches 7.. run return 0
scoreboard players operation #h_available ff_hallucination = #h_options ff_hallucination
scoreboard players operation #h_available ff_hallucination -= #h_active_count ff_hallucination
execute store result storage fossil_frights:hallucinations inactive_count int 1 run scoreboard players get #h_available ff_hallucination
function fossil_frights:hallucination/select_random with storage fossil_frights:hallucinations
