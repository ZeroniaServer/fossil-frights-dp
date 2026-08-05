# Music area: 45 66 -86 through 78 70 -57.
execute unless entity @s[gamemode=adventure,x=45,y=66,z=-86,dx=33,dy=4,dz=29] run function fossil_frights:lobby_games/sulfur_strikers/music/stop
execute if entity @s[tag=ff_sulfur_strikers_music] run function fossil_frights:lobby_games/sulfur_strikers/music/tick
execute if entity @s[gamemode=adventure,x=45,y=66,z=-86,dx=33,dy=4,dz=29] run function fossil_frights:lobby_games/sulfur_strikers/music/start
