data remove storage fossil_frights:game_over_animation boss_skin
execute store result score #boss_skin ff_boss_skin run random value 0..18
execute if score #boss_skin ff_boss_skin matches 0..16 run data modify storage fossil_frights:game_over_animation boss_skin set value {texture:"fossil-frights:skins/the_boss",model:"wide"}
execute if score #boss_skin ff_boss_skin matches 17 run data modify storage fossil_frights:game_over_animation boss_skin set value {texture:"fossil-frights:display/lobby/credits/players/polysquarazoid",model:"wide"}
execute if score #boss_skin ff_boss_skin matches 18 run data modify storage fossil_frights:game_over_animation boss_skin set value {texture:"fossil-frights:display/lobby/credits/players/rivertiger76",model:"wide"}
function fossil_frights:animations/defeat/summon_boss with storage fossil_frights:game_over_animation
