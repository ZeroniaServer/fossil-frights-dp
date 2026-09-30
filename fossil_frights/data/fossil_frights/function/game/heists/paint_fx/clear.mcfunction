scoreboard players set @s ff_heist_paint_fx 0
clear @s *[custom_data~{ff_paint_armor:true}]
item modify entity @s fossil_frights:player/all fossil_frights:game/heists/remove_paint
