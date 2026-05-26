function fossil_frights:items/task_rewards/give_vault_key
execute positioned -2 82 66 run playsound minecraft:block.chest.open master @a[tag=ff_active,distance=..14] ~ ~ ~ 0.8 1.2
execute positioned -2 82 66 run playsound minecraft:item.trident.return master @a[tag=ff_active,distance=..14] ~ ~ ~ 0.7 1.8
execute positioned -2 82 66 run particle minecraft:glow ~ ~ ~ 0.45 0.55 0.45 0.02 24 force
execute positioned -2 82 66 run particle minecraft:dust{color:[1.0,0.72,0.12],scale:1.2} ~ ~ ~ 0.35 0.5 0.35 0.02 18 force
