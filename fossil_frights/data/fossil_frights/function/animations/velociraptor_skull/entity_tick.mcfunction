# Try looking at a nearby player. If possible, face them and report as watching. If not possible or out of range, return to previous angle and report as not watching.
tp @s 7.5 84.0 46.5
scoreboard players set #watching ff_dummy 0
execute unless entity @s[tag=ff_velociraptor_skull.watching] positioned as @a[limit=1,sort=nearest,distance=..8,team=ff_guard,gamemode=!spectator] positioned ~ ~1 ~ store success score #watching ff_dummy run rotate @s facing ~ ~ ~
execute if entity @s[tag=ff_velociraptor_skull.watching] positioned as @a[limit=1,sort=nearest,distance=..15,team=ff_guard,gamemode=!spectator] positioned ~ ~1 ~ store success score #watching ff_dummy run rotate @s facing ~ ~ ~
scoreboard players set #valid_angle ff_dummy 1
execute if score #watching ff_dummy matches 1 unless entity @s[y_rotation=-20..130] run scoreboard players set #valid_angle ff_dummy 0
execute if score #valid_angle ff_dummy matches 0 run rotate @s ~ ~
execute if score #valid_angle ff_dummy matches 0 run scoreboard players set #watching ff_dummy 0

# If watching state changed, play sound and modify rotation speed.
execute if score #watching ff_dummy matches 1 unless entity @s[tag=ff_velociraptor_skull.watching] run playsound minecraft:entity.creaking.attack master @a ~ ~ ~ 1 0
execute if score #watching ff_dummy matches 0 if entity @s[tag=ff_velociraptor_skull.watching] run data modify entity @s teleport_duration set value 2
execute if score #watching ff_dummy matches 1 unless entity @s[tag=ff_velociraptor_skull.watching] run data modify entity @s teleport_duration set value 5
execute if score #watching ff_dummy matches 0 run tag @s remove ff_velociraptor_skull.watching
execute if score #watching ff_dummy matches 1 run tag @s add ff_velociraptor_skull.watching

# If not watching, slowly rotate back to normal angle.
execute if score #watching ff_dummy matches 0 if entity @s[y_rotation=-5..5,x_rotation=-5..5] run rotate @s 0 0
execute if score #watching ff_dummy matches 0 if entity @s[y_rotation=90..180] rotated as @s run rotate @s ~-1 ~
execute if score #watching ff_dummy matches 0 if entity @s[x_rotation=10..90] rotated as @s run rotate @s ~ ~-1
execute if score #watching ff_dummy matches 0 unless entity @s[y_rotation=90..180] unless entity @s[x_rotation=45..90] unless entity @s[y_rotation=-1..1,x_rotation=-1..1] rotated as @s positioned ^ ^ ^15 facing 7.5 84.0 100 positioned ^ ^ ^0.1 run rotate @s facing ~ ~ ~

# If looking down enough to cause the neck to break, move inward to prevent that
execute if entity @s[y_rotation=15..150,x_rotation=10..90] run tp @s 7.55 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=20..90] run tp @s 7.6 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=30..90] run tp @s 7.65 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=40..90] run tp @s 7.7 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=50..90] run tp @s 7.75 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=60..90] run tp @s 7.83333333333 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=70..90] run tp @s 7.91666666666 84.0 46.5
execute if entity @s[y_rotation=15..150,x_rotation=80..90] run tp @s 8.0 84.0 46.5
