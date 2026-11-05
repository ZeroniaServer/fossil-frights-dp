scoreboard players set #attacked ff_dummy 0
execute store success score #attacked ff_dummy run damage @e[limit=1,type=minecraft:player,distance=..0.25,gamemode=adventure,tag=!ff_fishing_rod.origin] 1 minecraft:player_attack by @a[limit=1,tag=ff_fishing_rod.origin]
execute on origin run tag @s remove ff_fishing_rod.origin
execute unless score #attacked ff_dummy matches 0 run kill @s
