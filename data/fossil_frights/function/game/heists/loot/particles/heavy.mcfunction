execute as @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click] at @s run particle minecraft:raid_omen ~ ~0.35 ~ 0.7 0.55 0.7 0 3 force @a[tag=ff_heist_thief]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click] at @s run particle minecraft:trial_omen ~ ~0.35 ~ 0.7 0.55 0.7 0 3 force @a[tag=ff_heist_guard,gamemode=!spectator]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_treasure_chest_click] at @s run particle minecraft:trial_omen ~ ~0.35 ~ 0.7 0.55 0.7 0 3 force @a[gamemode=spectator,tag=!ff_heist_guard]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_warden_click] at @s run function fossil_frights:game/heists/loot/particles/helpers/emit_standard {y:"1.35",dx:"0.18",dy:"0.1",dz:"0.18",count:"3"}
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_crab_click] at @s run function fossil_frights:game/heists/loot/particles/helpers/emit_standard {y:"0.35",dx:"0.1",dy:"0.06",dz:"0.1",count:"3"}
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_t_rex_skull_click] at @s run particle minecraft:raid_omen ~ ~0.35 ~ 0.75 0.55 0.75 0 3 force @a[tag=ff_heist_thief]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_t_rex_skull_click] at @s run particle minecraft:trial_omen ~ ~0.35 ~ 0.75 0.55 0.75 0 3 force @a[tag=ff_heist_guard,gamemode=!spectator]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_t_rex_skull_click] at @s run particle minecraft:trial_omen ~ ~0.35 ~ 0.75 0.55 0.75 0 3 force @a[gamemode=spectator,tag=!ff_heist_guard]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_raptor_skull_click] at @s run function fossil_frights:game/heists/loot/particles/helpers/emit_standard {y:"0.35",dx:"0.25",dy:"0.12",dz:"0.25",count:"3"}
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_biplane_click] at @s run particle minecraft:raid_omen ~ ~0.35 ~ 0.65 0.45 0.65 0 3 force @a[tag=ff_heist_thief]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_biplane_click] at @s run particle minecraft:trial_omen ~ ~0.35 ~ 0.65 0.45 0.65 0 3 force @a[tag=ff_heist_guard,gamemode=!spectator]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_biplane_click] at @s run particle minecraft:trial_omen ~ ~0.35 ~ 0.65 0.45 0.65 0 3 force @a[gamemode=spectator,tag=!ff_heist_guard]
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_vault_click] at @s run function fossil_frights:game/heists/loot/particles/helpers/emit_standard {y:"0.35",dx:"0.25",dy:"0.12",dz:"0.25",count:"3"}
execute as @e[type=minecraft:interaction,tag=ff_heist_loot_velociraptor_statue_click] at @s run function fossil_frights:game/heists/loot/particles/helpers/emit_standard {y:"0.45",dx:"0.1",dy:"0.06",dz:"0.1",count:"3"}
