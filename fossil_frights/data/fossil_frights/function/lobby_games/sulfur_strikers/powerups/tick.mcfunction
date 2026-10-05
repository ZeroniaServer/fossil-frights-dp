execute if score $powerup_particle_cooldown ff_sulfur matches 1.. run scoreboard players remove $powerup_particle_cooldown ff_sulfur 1
execute if score $powerup_particle_cooldown ff_sulfur matches 0 run function fossil_frights:lobby_games/sulfur_strikers/powerups/particles
execute if score $powerup_particle_cooldown ff_sulfur matches 0 run scoreboard players set $powerup_particle_cooldown ff_sulfur 10
execute if score $powerup_cooldown ff_sulfur matches 1.. run scoreboard players remove $powerup_cooldown ff_sulfur 1
execute if score $powerup_cooldown ff_sulfur matches 0 run scoreboard players set $powerup_cooldown ff_sulfur 100
execute if score $powerup_cooldown ff_sulfur matches 100 run scoreboard players set $powerup_player_count ff_sulfur 0
execute if score $powerup_cooldown ff_sulfur matches 100 as @a[predicate=fossil_frights:player/is_playing_sulfur_strikers] run scoreboard players add $powerup_player_count ff_sulfur 1
execute if score $powerup_cooldown ff_sulfur matches 100 run execute store result score $powerup_roll ff_sulfur run random value 1..4
execute if score $powerup_cooldown ff_sulfur matches 100 if score $powerup_player_count ff_sulfur matches 1..2 if score $powerup_roll ff_sulfur matches 1 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn
execute if score $powerup_cooldown ff_sulfur matches 100 if score $powerup_player_count ff_sulfur matches 3..4 if score $powerup_roll ff_sulfur matches 1..2 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn
execute if score $powerup_cooldown ff_sulfur matches 100 if score $powerup_player_count ff_sulfur matches 5.. if score $powerup_roll ff_sulfur matches 1..3 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn
