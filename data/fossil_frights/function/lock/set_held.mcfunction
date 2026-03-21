execute unless data entity @s SelectedItem run tellraw @s {"text":"Hold the reward item in your main hand first.","color":"red"}
execute unless data entity @s SelectedItem run return 0
data modify storage fossil_frights:lock reward set from entity @s SelectedItem
scoreboard players set @s ff_scan 16
execute anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:lock/set_held_raycast
