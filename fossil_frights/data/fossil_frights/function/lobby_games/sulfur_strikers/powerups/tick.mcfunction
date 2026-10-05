execute if score $powerup_particle_cooldown ff_sulfur matches 1.. run scoreboard players remove $powerup_particle_cooldown ff_sulfur 1
execute if score $powerup_particle_cooldown ff_sulfur matches 0 run function fossil_frights:lobby_games/sulfur_strikers/powerups/particles
execute if score $powerup_particle_cooldown ff_sulfur matches 0 run scoreboard players set $powerup_particle_cooldown ff_sulfur 10
execute if score $powerup_cooldown ff_sulfur matches 1.. run scoreboard players remove $powerup_cooldown ff_sulfur 1
execute if score $powerup_cooldown ff_sulfur matches 0 run scoreboard players set $powerup_cooldown ff_sulfur 300
execute if score $powerup_cooldown ff_sulfur matches 300 run execute store result score $powerup_roll ff_sulfur run random value 1..2
execute if score $powerup_cooldown ff_sulfur matches 300 if score $powerup_roll ff_sulfur matches 1 run function fossil_frights:lobby_games/sulfur_strikers/powerups/spawn
