execute store result score #period ff_dummy run time query gametime
execute store result storage fossil_frights:structure_void tick int 1 run scoreboard players operation #period ff_dummy %= #80 ff_constant
execute as @a[gamemode=creative,sort=random] if items entity @s weapon.* structure_void at @s anchored eyes positioned ^ ^ ^ run function fossil_frights.dev:structure_void/scan with storage fossil_frights:structure_void {}
data remove storage fossil_frights:structure_void tick
