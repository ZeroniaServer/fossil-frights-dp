execute unless score $loot_lady_bug ff_heist_loot_state matches 0 run return 0
scoreboard players set $loot_lady_bug ff_heist_loot_state 1
scoreboard players set $loot_lady_bug ff_heist_loot_value 300
scoreboard players operation $loot_lady_bug ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
scoreboard players add $heist_high_selected ff_heist 1
