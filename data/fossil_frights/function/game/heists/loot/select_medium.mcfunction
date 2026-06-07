execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/febreeze_rod
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/fertilizer
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/water_balloon
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/chlorine_tablet
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/scrap_metal
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/soap
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/dry_ice
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/fire_tablet
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/golden_nautilus
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/skeleton_plushie
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/fish_food
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/copper_shuffle
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/instant_coffee
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/empty_popcorn
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/pink_jelly
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/leather
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/brush
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/sponge
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/cotton_candy
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/credit_reel
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/muddy_sherd
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/carrot_cake
execute if score $heist_med_selected ff_heist matches 4.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/medium/cookie
# Fallback pass guarantees exactly four medium loot rows even if the random pass undershoots.
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/febreeze_rod
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/fertilizer
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/water_balloon
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/chlorine_tablet
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/scrap_metal
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/soap
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/dry_ice
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/fire_tablet
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/golden_nautilus
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/skeleton_plushie
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/fish_food
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/copper_shuffle
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/instant_coffee
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/empty_popcorn
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/pink_jelly
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/leather
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/brush
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/sponge
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/cotton_candy
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/credit_reel
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/muddy_sherd
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/carrot_cake
execute if score $heist_med_selected ff_heist matches 4.. run return 0
function fossil_frights:game/heists/loot/select/medium/cookie
