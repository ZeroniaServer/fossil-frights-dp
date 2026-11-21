fill 7 109 53 -3 109 53 minecraft:air strict
playsound minecraft:entity.generic.explode master @a 9.5 110.5 53.5 1 1
particle minecraft:explosion 9.5 110.5 53.5 0 1 1 1 10 force
execute positioned 9.5 110.5 53.5 as @a[distance=..2] run damage @s 14 minecraft:generic
execute positioned 9.5 110.5 53.5 as @a[distance=..4] unless entity @s[distance=..2] run damage @s 4 minecraft:generic
playsound minecraft:entity.generic.explode master @a -4.5 110.5 53.5 1 1
particle minecraft:explosion -4.5 110.5 53.5 0 1 1 1 10 force
execute positioned -4.5 110.5 53.5 as @a[distance=..2] run damage @s 14 minecraft:generic
execute positioned -4.5 110.5 53.5 as @a[distance=..4] unless entity @s[distance=..2] run damage @s 4 minecraft:generic
particle minecraft:explosion 0.5 110.5 51.5 0 1 0 1 3 force
