execute if score #h_active_count ff_hallucination matches 0 run scoreboard players set #h_timer ff_hallucination 0
execute if score #h_active_count ff_hallucination matches 0 run scoreboard players set #h_was_zero ff_hallucination 0
execute if score #h_active_count ff_hallucination matches 0 run return 0
execute if score $h_jolly_curse ff_hallucination matches 1 run function fossil_frights:hallucination/effects/jolly_curse/stop
scoreboard players set $h_jolly_curse ff_hallucination 0
execute if score $h_avalanche ff_hallucination matches 1 run function fossil_frights:hallucination/effects/avalanche/stop
scoreboard players set $h_avalanche ff_hallucination 0
execute if score $h_darkness ff_hallucination matches 1 run function fossil_frights:hallucination/effects/darkness/stop
scoreboard players set $h_darkness ff_hallucination 0
execute if score $h_freezing_floods ff_hallucination matches 1 run function fossil_frights:hallucination/effects/freezing_floods/stop
scoreboard players set $h_freezing_floods ff_hallucination 0
execute if score $h_snowstorm ff_hallucination matches 1 run function fossil_frights:hallucination/effects/snowstorm/stop
scoreboard players set $h_snowstorm ff_hallucination 0
execute if score $h_elf_infestation ff_hallucination matches 1 run function fossil_frights:hallucination/effects/elf_infestation/stop
scoreboard players set $h_elf_infestation ff_hallucination 0
execute if score $h_chimney_smoke ff_hallucination matches 1 run function fossil_frights:hallucination/effects/chimney_smoke/stop
scoreboard players set $h_chimney_smoke ff_hallucination 0
scoreboard players set #h_active_count ff_hallucination 0
scoreboard players set #h_timer ff_hallucination 0
scoreboard players set #h_was_zero ff_hallucination 0
function fossil_frights:game/bossbar/update_hazards
