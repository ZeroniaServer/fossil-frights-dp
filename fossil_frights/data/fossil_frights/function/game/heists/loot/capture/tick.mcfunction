execute if score #heist_loot_display ff_heist = $heist_loot ff_heist run return run scoreboard players set #heist_loot_display_incrementing ff_heist 0

scoreboard players operation #heist_loot_display_diff ff_heist = $heist_loot ff_heist
scoreboard players operation #heist_loot_display_diff ff_heist -= #heist_loot_display ff_heist
execute if score #heist_loot_display_diff ff_heist matches ..-1 run scoreboard players operation #heist_loot_display_diff ff_heist *= #-1 ff_constant

execute unless score #heist_loot_display_incrementing ff_heist matches 1.. run scoreboard players operation #heist_loot_display_incrementer ff_heist = #heist_loot_display_diff ff_heist
execute unless score #heist_loot_display_incrementing ff_heist matches 1.. run scoreboard players operation #heist_loot_display_incrementer ff_heist /= #20 ff_constant
execute unless score #heist_loot_display_incrementing ff_heist matches 1.. if score #heist_loot_display_incrementer ff_heist matches ..0 run scoreboard players set #heist_loot_display_incrementer ff_heist 1
scoreboard players set #heist_loot_display_incrementing ff_heist 1

execute if score #heist_loot_display_diff ff_heist < #heist_loot_display_incrementer ff_heist run scoreboard players operation #heist_loot_display ff_heist = $heist_loot ff_heist

execute if score #heist_loot_display ff_heist < $heist_loot ff_heist run scoreboard players operation #heist_loot_display ff_heist += #heist_loot_display_incrementer ff_heist
execute if score #heist_loot_display ff_heist > $heist_loot ff_heist run scoreboard players operation #heist_loot_display ff_heist -= #heist_loot_display_incrementer ff_heist
execute if score #heist_loot_display ff_heist = $heist_loot ff_heist run scoreboard players set #heist_loot_display_incrementing ff_heist 0

function fossil_frights:game/heists/loot/header