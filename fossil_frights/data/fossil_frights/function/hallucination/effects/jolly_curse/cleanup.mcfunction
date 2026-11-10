scoreboard players set #jolly_curse_timer ff_hazard_rng 0
scoreboard players set #jolly_curse_restore_timer ff_hazard_rng 0
scoreboard players set #jolly_curse_second_timer ff_hazard_rng 0
scoreboard players set #jolly_curse_state ff_hazard_rng 0
scoreboard players set #jolly_curse_blinks ff_hazard_rng 0
scoreboard players set #jolly_curse_effect_timer ff_hazard_rng 0
effect clear @a[predicate=fossil_frights:player/team/guard] minecraft:levitation
function fossil_frights:hallucination/effects/jolly_curse/restore_all
function fossil_frights:hallucination/effects/jolly_curse/clear_selected
