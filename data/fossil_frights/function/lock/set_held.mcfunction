execute unless data entity @s SelectedItem run function fossil_frights:messages/error/hold_reward_item_first
execute unless data entity @s SelectedItem run return 0
data modify storage fossil_frights:lock reward set from entity @s SelectedItem
scoreboard players set @s ff_scan 16
execute anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:lock/set_held_raycast
