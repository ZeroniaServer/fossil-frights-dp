execute if score $h_jolly_curse ff_hallucination matches 1 run function fossil_frights:hallucination/effects/jolly_curse/cleanup
scoreboard players set $h_jolly_curse ff_hallucination 0
scoreboard players set $h_avalanche ff_hallucination 0
execute if score $h_darkness ff_hallucination matches 1 run function fossil_frights:hallucination/effects/darkness/stop
scoreboard players set $h_darkness ff_hallucination 0
scoreboard players set $h_freezing_floods ff_hallucination 0
execute if score $h_snowstorm ff_hallucination matches 1 run function fossil_frights:hallucination/effects/snowstorm/stop
scoreboard players set $h_snowstorm ff_hallucination 0
function fossil_frights:hallucination/effects/snowstorm/clear_all
scoreboard players set #snowstorm_particle_timer ff_hallucination 0
scoreboard players set $h_elf_infestation ff_hallucination 0
scoreboard players set $h_chimney_smoke ff_hallucination 0
scoreboard players set #h_active_count ff_hallucination 0
scoreboard players set #h_timer ff_hallucination 0
scoreboard players set #h_was_zero ff_hallucination 0
scoreboard players set #jolly_curse_timer ff_hazard_rng 0
scoreboard players set #jolly_curse_restore_timer ff_hazard_rng 0
scoreboard players set #jolly_curse_second_timer ff_hazard_rng 0
scoreboard players set #jolly_curse_state ff_hazard_rng 0
scoreboard players set #jolly_curse_blinks ff_hazard_rng 0
scoreboard players set #jolly_curse_effect_timer ff_hazard_rng 0
function fossil_frights:hallucination/effects/darkness/update_camera_computer
scoreboard players set #darkness_waves_restored ff_hallucination 0
