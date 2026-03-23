execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run function fossil_frights:player_login
execute unless score @s ff_leave_game_seen matches -2147483648..2147483647 run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
execute unless score @s ff_leave_game = @s ff_leave_game_seen run function fossil_frights:player_login
execute unless score @s ff_leave_game = @s ff_leave_game_seen run scoreboard players operation @s ff_leave_game_seen = @s ff_leave_game
scoreboard players add @s ff_key_cooldown 0
advancement revoke @s only fossil_frights:lock_click
scoreboard players set @s ff_lock_look 0
scoreboard players set @s ff_scan 16
execute if score @s ff_key_cooldown matches 0 if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick"}} anchored eyes positioned ^ ^ ^0.5 run function fossil_frights:raycast_step
