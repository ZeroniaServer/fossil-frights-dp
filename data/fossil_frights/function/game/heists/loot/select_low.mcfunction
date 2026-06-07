execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/coffee
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/poster_tube
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/ghast_plushie
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/piglin_head
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/popcorn
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/lollipop
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/fishing_rod
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/burger
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/chocolate_cake
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/ancient_scripture
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/chondrite
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/sand_dollar
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/trilobite_fossil
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/golden_sword
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/portal_core
execute if score $heist_low_selected ff_heist matches 6.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..45 run function fossil_frights:game/heists/loot/select/low/spyglass
# Fallback pass guarantees exactly six low loot rows even if the random pass undershoots.
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/coffee
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/poster_tube
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/ghast_plushie
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/piglin_head
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/popcorn
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/lollipop
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/fishing_rod
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/burger
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/chocolate_cake
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/ancient_scripture
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/chondrite
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/sand_dollar
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/trilobite_fossil
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/golden_sword
execute if score $heist_low_selected ff_heist matches 6.. run return 0
function fossil_frights:game/heists/loot/select/low/portal_core
function fossil_frights:game/heists/loot/select/low/spyglass
