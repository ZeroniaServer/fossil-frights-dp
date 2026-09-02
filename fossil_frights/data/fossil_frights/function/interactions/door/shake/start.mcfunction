playsound minecraft:block.chest.locked block @a[limit=1,tag=ff_door.player] ~0.5 ~ ~0.5
execute unless score @s ff_door_shake_stage matches 0.. run scoreboard players set @s ff_door_shake_stage 0
schedule function fossil_frights:interactions/door/shake/step 1t
