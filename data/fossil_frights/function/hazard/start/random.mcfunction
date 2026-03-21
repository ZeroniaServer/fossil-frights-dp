execute if score lights ff_hazard_active matches 0 if score lava ff_hazard_active matches 1.. if score floods ff_hazard_active matches 1.. run function fossil_frights:hazard/start/lights
execute if score lights ff_hazard_active matches 1.. if score lava ff_hazard_active matches 0 if score floods ff_hazard_active matches 1.. run function fossil_frights:hazard/start/lava
execute if score lights ff_hazard_active matches 1.. if score lava ff_hazard_active matches 1.. if score floods ff_hazard_active matches 0 run function fossil_frights:hazard/start/floods

execute if score lights ff_hazard_active matches 0 if score lava ff_hazard_active matches 0 if score floods ff_hazard_active matches 1.. run function fossil_frights:hazard/start/random_pick_lights_lava
execute if score lights ff_hazard_active matches 0 if score lava ff_hazard_active matches 1.. if score floods ff_hazard_active matches 0 run function fossil_frights:hazard/start/random_pick_lights_floods
execute if score lights ff_hazard_active matches 1.. if score lava ff_hazard_active matches 0 if score floods ff_hazard_active matches 0 run function fossil_frights:hazard/start/random_pick_lava_floods

execute if score lights ff_hazard_active matches 0 if score lava ff_hazard_active matches 0 if score floods ff_hazard_active matches 0 run function fossil_frights:hazard/start/random_pick_all
