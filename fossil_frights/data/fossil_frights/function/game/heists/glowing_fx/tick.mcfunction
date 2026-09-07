execute as @a[predicate=fossil_frights:entity/effects/glowing] run tag @s add ff_glowing_overlay
execute as @a[tag=ff_glowing_overlay] run function fossil_frights:game/heists/glowing_fx/player_tick
