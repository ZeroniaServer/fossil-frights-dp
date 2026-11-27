execute as @a[gamemode=!spectator,tag=ff_ice_frozen] run item modify entity @s fossil_frights:player/filtered/fishing_rod fossil_frights:items/fishing_rod/disable
execute as @a[gamemode=!spectator,tag=!ff_ice_frozen] run item modify entity @s fossil_frights:player/filtered/fishing_rod fossil_frights:items/fishing_rod/enable
