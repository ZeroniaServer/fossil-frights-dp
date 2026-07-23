execute if entity @s[tag=ff_ice_frozen_overlay] run return 0
execute if score @s ff_heist_invis_ticks matches 1.. run item modify entity @s armor.head fossil_frights:game/heists/ice_frozen_overlay/show_hidden
execute if score @s ff_heist_invis_ticks matches 1.. run tag @s add ff_ice_frozen_overlay
execute if score @s ff_heist_invis_ticks matches 1.. run return 0
item modify entity @s armor.head fossil_frights:game/heists/ice_frozen_overlay/show
tag @s add ff_ice_frozen_overlay
