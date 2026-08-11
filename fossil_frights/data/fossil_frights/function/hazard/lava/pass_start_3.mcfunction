scoreboard players set #lava_mode ff_hazard_rng 1
scoreboard players set #lava_phase ff_hazard_rng 3
scoreboard players set #lava_anim_phase ff_hazard_rng 0
scoreboard players set #lava_anim_timer ff_hazard_rng 0
place template fossil_frights:lava_phase_3 -26 69 17
# Fossil Heists only: overlay the extra lava_fh structure after the final phase
# so the animation's phase placements don't override it.
execute if score $heist_round_active ff_game_state matches 1 run place template fossil_frights:lava_fh -26 69 17
playsound minecraft:block.lava.pop master @a ~ ~ ~ 1.0 1.1
