damage @e[limit=1,type=minecraft:player,distance=..0.001,gamemode=adventure,tag=!ff_fishing_rod.origin] 1 minecraft:player_attack by @a[limit=1,tag=ff_fishing_rod.origin]
execute on origin run tag @s remove ff_fishing_rod.origin
kill @s
