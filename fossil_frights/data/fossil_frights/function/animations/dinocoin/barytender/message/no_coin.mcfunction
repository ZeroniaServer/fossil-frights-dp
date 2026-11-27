function fossil_frights:animations/dinocoin/barytender/message/player_nearby
scoreboard players set @s ff_barytender_streak 0
scoreboard players set @s ff_barytender_last_clicked 0
execute positioned 10 69.55 49 run playsound minecraft:entity.panda.cant_breed master @a[distance=..16] ~ ~ ~ 1 1
