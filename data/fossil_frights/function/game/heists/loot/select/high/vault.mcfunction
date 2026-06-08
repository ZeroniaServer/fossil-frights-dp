execute unless score $loot_vault ff_heist_loot_state matches 0 run return 0
scoreboard players set $loot_vault ff_heist_loot_state 1
execute store result score $loot_vault ff_heist_loot_value run random value 1..4
execute if score $loot_vault ff_heist_loot_value matches 1 run scoreboard players set $loot_vault ff_heist_loot_value 350
execute if score $loot_vault ff_heist_loot_value matches 2 run scoreboard players set $loot_vault ff_heist_loot_value 400
execute if score $loot_vault ff_heist_loot_value matches 3 run scoreboard players set $loot_vault ff_heist_loot_value 450
execute if score $loot_vault ff_heist_loot_value matches 4 run scoreboard players set $loot_vault ff_heist_loot_value 500
scoreboard players operation $loot_vault ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
scoreboard players add $heist_high_selected ff_heist 1
