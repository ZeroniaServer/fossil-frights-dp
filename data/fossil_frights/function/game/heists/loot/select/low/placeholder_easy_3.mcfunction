execute unless score $loot_placeholder_easy_3 ff_heist_loot_state matches 0 run return 0
scoreboard players set $loot_placeholder_easy_3 ff_heist_loot_state 1
scoreboard players set $loot_placeholder_easy_3 ff_heist_loot_value 100
scoreboard players operation $loot_placeholder_easy_3 ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
