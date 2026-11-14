execute unless score $loot_icy_sherd ff_heist_loot_state matches 0 run return 0
scoreboard players set $loot_icy_sherd ff_heist_loot_state 1
scoreboard players set $loot_icy_sherd ff_heist_loot_value 200
scoreboard players operation $loot_icy_sherd ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
scoreboard players add $heist_uncommon_selected ff_heist 1
