data modify storage fossil_frights:bossbar components set value [""]

# lights
execute if score lights ff_hazard_active matches 1 run data modify storage fossil_frights:bossbar components append value "\ue120"
# lava
execute unless score $heist_basement_lava_lock ff_heist matches 1.. if score lava ff_hazard_active matches 1 run data modify storage fossil_frights:bossbar components append value "\ue121"
execute if score $heist_basement_lava_lock ff_heist matches 1.. run data modify storage fossil_frights:bossbar components append value "\ue121\ue125"
# floods
execute if score floods ff_hazard_active matches 1 run data modify storage fossil_frights:bossbar components append value "\ue122"
# security
execute if score security ff_hazard_active matches 1 run data modify storage fossil_frights:bossbar components append value "\ue123"
# curse
execute if score curse ff_hazard_active matches 1 run data modify storage fossil_frights:bossbar components append value "\ue124"

bossbar set fossil_frights:hazards name {font:"fossil-frights:icons/hazards",storage:"fossil_frights:bossbar",nbt:"components[]",interpret:true,separator:""}
bossbar set fossil_frights:hazards visible true
