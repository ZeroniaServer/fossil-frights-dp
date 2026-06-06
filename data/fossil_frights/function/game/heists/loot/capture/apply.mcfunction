$execute unless score $(key) ff_heist_loot_state matches 1..2 run return 0
execute if score $heist_loot ff_heist matches 1000.. run return 0
$scoreboard players operation $heist_loot ff_heist += $(key) ff_heist_loot_value
function fossil_frights:game/heists/loot/header
$scoreboard players set $(key) ff_heist_loot_state 3
playsound minecraft:entity.experience_orb.pickup player @a[tag=ff_heist_thief] ~ ~ ~ 0.7 1.6
particle minecraft:happy_villager ~ ~0.2 ~ 0.25 0.25 0.25 0 12 force
kill @s
execute if score $heist_loot ff_heist matches 1000.. run function fossil_frights:game/heists/thieves_win
