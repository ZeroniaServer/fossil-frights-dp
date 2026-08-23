data modify entity @s Air set value 0
data modify entity @s Air set value 1

scoreboard players set #in_column ff_dummy 0
execute align xyz positioned ~0.25 ~ ~0.25 if entity @s[dx=0] positioned ~-0.5 ~ ~-0.5 if entity @s[dx=0] run scoreboard players set #in_column ff_dummy 1
execute if score #in_column ff_dummy matches 0 run return 0
execute align xyz positioned ~0.5 ~ ~0.5 facing entity @s feet run rotate @s ~ 0
execute if entity @s[y_rotation=-135..-45] align x run tp @s ~1.001 ~ ~
execute if entity @s[y_rotation=-135..-45] run return run data modify entity @s Motion[0] set value 0
execute if entity @s[y_rotation=-45..45] align z run tp @s ~ ~ ~1.001
execute if entity @s[y_rotation=-45..45] run return run data modify entity @s Motion[2] set value 0
execute if entity @s[y_rotation=45..135] align x run tp @s ~-0.001 ~ ~
execute if entity @s[y_rotation=45..135] run return run data modify entity @s Motion[0] set value 0
execute if entity @s[y_rotation=135..-135] align z run tp @s ~ ~ ~-0.001
execute if entity @s[y_rotation=135..-135] run return run data modify entity @s Motion[2] set value 0
