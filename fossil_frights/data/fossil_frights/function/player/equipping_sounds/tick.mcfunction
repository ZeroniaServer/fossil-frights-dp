execute as @a[scores={ff_was_wearing_leather_boots=1}] unless items entity @s armor.feet *[custom_data~{ff_leather_boots_audiovisual:true}] at @s run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~
execute as @a[scores={ff_was_wearing_leather_boots=0}] if items entity @s armor.feet *[custom_data~{ff_leather_boots_audiovisual:true}] at @s run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~
execute as @a store success score @s ff_was_wearing_leather_boots if items entity @s armor.feet *[custom_data~{ff_leather_boots_audiovisual:true}]
