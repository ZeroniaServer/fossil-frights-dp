
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless predicate fossil_frights:entity/effects/resistance run function fossil_frights:player/protection_enable
execute if entity @s[tag=ff_damage_guard,gamemode=!spectator] unless predicate fossil_frights:entity/effects/saturation run effect give @s minecraft:saturation infinite 255 true
execute if entity @s[gamemode=!spectator] if score $game_running ff_game_state matches 1 if predicate fossil_frights:player/is_playing unless score $heist_mode_active ff_game_state matches 1 unless predicate fossil_frights:entity/effects/saturation run effect give @s minecraft:saturation infinite 255 true
execute if entity @s[team=ff_guard,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 unless predicate fossil_frights:entity/effects/saturation run effect give @s minecraft:saturation infinite 255 true
# A thief's saturation stays absent during the night stick's regeneration lock so hit damage can persist.
execute if entity @s[team=ff_thief,gamemode=!spectator] if score $heist_mode_active ff_game_state matches 1 unless predicate fossil_frights:entity/effects/saturation unless score @s ff_heist_regen_lock matches 1.. run effect give @s minecraft:saturation infinite 255 true
