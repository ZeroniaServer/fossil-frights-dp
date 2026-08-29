execute unless score $loot_biplane ff_heist_loot_state matches 0 run return 0
scoreboard players set $loot_biplane ff_heist_loot_state 1
execute store result score $loot_biplane ff_heist_loot_value run random value 1..3
execute if score $loot_biplane ff_heist_loot_value matches 1 run scoreboard players set $loot_biplane ff_heist_loot_value 350
execute if score $loot_biplane ff_heist_loot_value matches 2 run scoreboard players set $loot_biplane ff_heist_loot_value 400
execute if score $loot_biplane ff_heist_loot_value matches 3 run scoreboard players set $loot_biplane ff_heist_loot_value 450
scoreboard players operation $loot_biplane ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
scoreboard players add $heist_heavy_selected ff_heist 1
