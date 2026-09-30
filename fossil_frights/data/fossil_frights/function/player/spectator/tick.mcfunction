item override entity @s fossil_frights:player/all from entity @p[distance=..0.001,gamemode=!spectator,predicate=fossil_frights:player/is_playing] fossil_frights:player/all
execute unless entity @a[limit=1,distance=..0.001,gamemode=!spectator,predicate=fossil_frights:player/is_playing] run item fill entity @s fossil_frights:player/all with air
