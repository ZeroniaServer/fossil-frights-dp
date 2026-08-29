execute unless score $loot_muddy_sherd ff_heist_loot_state matches 0 run return 0
scoreboard players set $loot_muddy_sherd ff_heist_loot_state 1
execute store result score $loot_muddy_sherd ff_heist_loot_value run random value 1..2
execute if score $loot_muddy_sherd ff_heist_loot_value matches 1 run scoreboard players set $loot_muddy_sherd ff_heist_loot_value 200
execute if score $loot_muddy_sherd ff_heist_loot_value matches 2 run scoreboard players set $loot_muddy_sherd ff_heist_loot_value 250
scoreboard players operation $loot_muddy_sherd ff_heist_sidebar = $heist_sidebar_slot ff_heist
scoreboard players remove $heist_sidebar_slot ff_heist 1
scoreboard players add $heist_uncommon_selected ff_heist 1
