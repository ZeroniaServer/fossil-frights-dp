scoreboard players set #success ff_dummy 0
execute positioned 39.5 81.5 62.5 store success score #success ff_dummy run function fossil_frights:animations/anvil/item_particles/macro with storage fossil_frights:anvil {}
execute positioned 39.5 81.5 62.5 if score #success ff_dummy matches 0 run function fossil_frights:animations/anvil/item_particles/fallback
