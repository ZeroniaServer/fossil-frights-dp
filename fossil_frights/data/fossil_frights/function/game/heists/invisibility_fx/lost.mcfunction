tag @s remove ff_invisibility_fx
item modify entity @s fossil_frights:player/all fossil_frights:game/heists/set_invisible/off
execute if items entity @s armor.feet minecraft:leather_boots[custom_data~{itemID:"thief_avalanche_boots"}] run item modify entity @s armor.feet fossil_frights:game/heists/set_invisible/boots_off
