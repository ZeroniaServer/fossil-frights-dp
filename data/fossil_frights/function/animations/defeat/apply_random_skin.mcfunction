data remove storage fossil_frights:game_over_animation boss_skin
execute store result score #boss_skin ff_boss_skin run random roll 0..18
execute if score #boss_skin ff_boss_skin matches 0..16 run data modify storage fossil_frights:game_over_animation boss_skin set value "Boss"
execute if score #boss_skin ff_boss_skin matches 17 run data modify storage fossil_frights:game_over_animation boss_skin set value "Polysquarazoid"
execute if score #boss_skin ff_boss_skin matches 18 run data modify storage fossil_frights:game_over_animation boss_skin set value "RiverTiger76"
function fossil_frights:animations/defeat/summon_boss with storage fossil_frights:game_over_animation




