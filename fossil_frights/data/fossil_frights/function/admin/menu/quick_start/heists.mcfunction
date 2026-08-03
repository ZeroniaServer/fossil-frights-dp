execute if score $game_running ff_game_state matches 1 run return run function fossil_frights:admin/menu/progress
function fossil_frights:command/heists
execute unless score $heist_mode_active ff_game_state matches 1 run return 0
scoreboard players set @a ff_join_cooldown 0
scoreboard players set $quick_start_heists_slot ff_game_state 0
execute store result score $quick_start_heists_first_team ff_game_state run random value 0..1
tag @a[gamemode=!spectator] add ff_quick_start_heists_assigning
execute as @a[tag=ff_quick_start_heists_assigning] run function fossil_frights:admin/menu/quick_start/heists_assign_team
tag @a remove ff_quick_start_heists_assigning
