# Music area: 47 66 -86 through 76 70 -57.
execute unless entity @s[gamemode=adventure,x=47,y=66,z=-86,dx=29,dy=4,dz=29] run function fossil_frights:sulfur_strikers/music/stop
execute if entity @s[gamemode=adventure,x=47,y=66,z=-86,dx=29,dy=4,dz=29] run function fossil_frights:sulfur_strikers/music/start
execute if entity @s[tag=ff_sulfur_strikers_music] run function fossil_frights:sulfur_strikers/music/tick
