execute if entity @s[tag=ff_button.disabled] run return 0
execute if entity @s[tag=ff_button.pressed] run return 0

scoreboard players set #condition_passed ff_dummy 1
data remove storage fossil_frights:button button_data
data modify storage fossil_frights:button button_data set from entity @s data.ff_button
execute if data storage fossil_frights:button button_data.condition store success score #condition_passed ff_dummy on target at @s run function fossil_frights:interactions/button/interact/check_condition with storage fossil_frights:button button_data
execute if score #condition_passed ff_dummy matches 0 run return 0

return 1
