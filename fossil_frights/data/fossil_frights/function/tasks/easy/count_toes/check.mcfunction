execute unless entity @s[x=23.5,y=81.0,z=56.5,distance=..4] run return 0

execute anchored eyes facing 23.5 81.0 56.5 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run return 1

return 0
