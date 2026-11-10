$execute if score #h_available ff_hallucination matches 2.. store result score #h_pick ff_hallucination run random value 1..$(inactive_count)
execute if score #h_available ff_hallucination matches 1 run scoreboard players set #h_pick ff_hallucination 1
scoreboard players set #h_cursor ff_hallucination 0
execute unless score $h_jolly_curse ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_jolly_curse ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/jolly_curse
execute unless score $h_avalanche ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_avalanche ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/avalanche
execute unless score $h_darkness ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_darkness ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/darkness
execute unless score $h_freezing_floods ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_freezing_floods ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/freezing_floods
execute unless score $h_snowstorm ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_snowstorm ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/snowstorm
execute unless score $h_elf_infestation ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_elf_infestation ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/elf_infestation
execute unless score $h_chimney_smoke ff_hallucination matches 1 run scoreboard players add #h_cursor ff_hallucination 1
execute unless score $h_chimney_smoke ff_hallucination matches 1 if score #h_cursor ff_hallucination = #h_pick ff_hallucination run function fossil_frights:hallucination/select/chimney_smoke
