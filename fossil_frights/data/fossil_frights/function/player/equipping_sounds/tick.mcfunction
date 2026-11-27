execute as @a[scores={ff_was_wearing_leather_boots=1}] unless items entity @s armor.feet *[custom_data~{ff_bunny_slippers:{}}] at @s run playsound fossil_frights:item.bunny_slippers.equip player @a ~ ~ ~
execute as @a[scores={ff_was_wearing_leather_boots=0}] if items entity @s armor.feet *[custom_data~{ff_bunny_slippers:{}}] at @s run playsound fossil_frights:item.bunny_slippers.equip player @a ~ ~ ~
execute as @a store success score @s ff_was_wearing_leather_boots if items entity @s armor.feet *[custom_data~{ff_bunny_slippers:{}}]
