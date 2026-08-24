execute if predicate fossil_frights:game_state/heist_mode_active run scoreboard players set @s ff_bat_bug_timer 500
execute unless predicate fossil_frights:game_state/heist_mode_active run scoreboard players operation @s ff_bat_bug_timer = $bat_bug_timer_cfg ff_bat_bug_timer
scoreboard players set @s ff_bat_bug_bar 20
