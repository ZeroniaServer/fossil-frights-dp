execute unless entity @s[tag=ff_spectator_mirror] run item fill entity @s fossil_frights:player/all with air

tag @s remove ff_spectator_mirror
execute unless entity @a[limit=1,distance=..0.001,gamemode=!spectator,predicate=fossil_frights:player/is_playing] run tag @s add ff_spectator_mirror

execute if entity @s[tag=ff_spectator_mirror] run item override entity @s fossil_frights:player/all from entity @p[distance=..0.001,gamemode=!spectator,predicate=fossil_frights:player/is_playing] fossil_frights:player/all
