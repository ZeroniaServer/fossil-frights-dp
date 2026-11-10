execute unless predicate fossil_frights:game_state/heist_mode_active run return 0

execute if predicate execute if items entity @s fossil_frights:player/all *[minecraft:custom_data~{itemID:"dinocoin"}] run tag @s add fh_has_coin
$execute if entity @s[tag=fh_has_coin] run loot spawn ~ ~ ~ fossil_frights:items/dinocoin
execute if entity @s[tag=fh_has_coin] run execute as @n[type=item,tag=fh_death_coin] at @s run playsound minecraft:block.note_block.bell player @a[distance=0..10]
tag @s remove fh_has_coin