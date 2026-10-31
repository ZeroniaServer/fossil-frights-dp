data modify storage fossil_frights:bossbar components set value [""]

# lights
execute if predicate fossil_frights:game_state/hazard_active/lights run data modify storage fossil_frights:bossbar components append value "\ue120"
# lava
execute unless score $heist_basement_lava_lock ff_heist matches 1.. if predicate fossil_frights:game_state/hazard_active/lava run data modify storage fossil_frights:bossbar components append value "\ue121"
execute if score $heist_basement_lava_lock ff_heist matches 1.. run data modify storage fossil_frights:bossbar components append value "\ue121\ue125"
# floods
execute if predicate fossil_frights:game_state/hazard_active/floods run data modify storage fossil_frights:bossbar components append value "\ue122"
# security
execute if predicate fossil_frights:game_state/hazard_active/security run data modify storage fossil_frights:bossbar components append value "\ue123"
# curse
execute if predicate fossil_frights:game_state/hazard_active/curse run data modify storage fossil_frights:bossbar components append value "\ue124"

bossbar set fossil_frights:hazards name {font:"fossil_frights:icons/hazards",storage:"fossil_frights:bossbar",nbt:"components[]",interpret:true,separator:""}
bossbar set fossil_frights:hazards visible true
