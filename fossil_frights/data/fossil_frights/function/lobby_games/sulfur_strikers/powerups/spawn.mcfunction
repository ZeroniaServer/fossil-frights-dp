execute store result score $powerup_spawn ff_sulfur run random value 1..4
execute if score $powerup_spawn ff_sulfur matches 1 positioned 51 66 -70 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn_at
execute if score $powerup_spawn ff_sulfur matches 2 positioned 51 66 -82 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn_at
execute if score $powerup_spawn ff_sulfur matches 3 positioned 73 66 -82 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn_at
execute if score $powerup_spawn ff_sulfur matches 4 positioned 73 66 -70 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn_at
