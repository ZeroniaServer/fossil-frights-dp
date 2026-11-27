execute unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:animations/dinocoin/barytender/message/check

execute as @a[scores={ff_barytender_streak=1..}] run scoreboard players add @s ff_barytender_last_clicked 1
execute as @a[scores={ff_barytender_last_clicked=20..}] run scoreboard players set @s ff_barytender_streak 0
execute as @a[scores={ff_barytender_last_clicked=20..}] run scoreboard players set @s ff_barytender_last_clicked 0