execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/lady_bug
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/basketball
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/lost_key
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/hoverboard
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/sniffer_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/trike_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/t_rex_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/velociraptor_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/plesiosaur_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
execute store result score $heist_roll ff_heist run random value 1..100
execute if score $heist_roll ff_heist matches ..35 run function fossil_frights:game/heists/loot/select/high/pteradactyl_dna_cloth
# Fallback pass guarantees exactly two high loot rows even if the random pass undershoots.
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/lady_bug
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/basketball
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/lost_key
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/hoverboard
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/sniffer_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/trike_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/t_rex_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/velociraptor_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/plesiosaur_dna_cloth
execute if score $heist_high_selected ff_heist matches 2.. run return 0
function fossil_frights:game/heists/loot/select/high/pteradactyl_dna_cloth
