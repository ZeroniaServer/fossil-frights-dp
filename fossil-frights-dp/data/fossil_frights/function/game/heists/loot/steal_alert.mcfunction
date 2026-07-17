# Detect newly-stolen loot (state 1->2) per value tier and fire alarms.
scoreboard players set $taken_total ff_heist 0
scoreboard players set $taken_high ff_heist 0
execute if score $loot_ancient_scripture ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_ancient_scripture ff_heist_loot_state matches 2.. if score $loot_ancient_scripture ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_basketball ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_basketball ff_heist_loot_state matches 2.. if score $loot_basketball ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_biplane ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_biplane ff_heist_loot_state matches 2.. if score $loot_biplane ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_brush ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_brush ff_heist_loot_state matches 2.. if score $loot_brush ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_burger ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_burger ff_heist_loot_state matches 2.. if score $loot_burger ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_carrot_cake ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_carrot_cake ff_heist_loot_state matches 2.. if score $loot_carrot_cake ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_chlorine_tablet ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_chlorine_tablet ff_heist_loot_state matches 2.. if score $loot_chlorine_tablet ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_chocolate_cake ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_chocolate_cake ff_heist_loot_state matches 2.. if score $loot_chocolate_cake ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_chondrite ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_chondrite ff_heist_loot_state matches 2.. if score $loot_chondrite ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_coffee ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_coffee ff_heist_loot_state matches 2.. if score $loot_coffee ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_cookie ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_cookie ff_heist_loot_state matches 2.. if score $loot_cookie ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_copper_shuffle ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_copper_shuffle ff_heist_loot_state matches 2.. if score $loot_copper_shuffle ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_cotton_candy ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_cotton_candy ff_heist_loot_state matches 2.. if score $loot_cotton_candy ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_crab ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_crab ff_heist_loot_state matches 2.. if score $loot_crab ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_credit_reel ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_credit_reel ff_heist_loot_state matches 2.. if score $loot_credit_reel ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_dry_ice ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_dry_ice ff_heist_loot_state matches 2.. if score $loot_dry_ice ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_empty_popcorn ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_empty_popcorn ff_heist_loot_state matches 2.. if score $loot_empty_popcorn ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_febreeze_rod ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_febreeze_rod ff_heist_loot_state matches 2.. if score $loot_febreeze_rod ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_fertilizer ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_fertilizer ff_heist_loot_state matches 2.. if score $loot_fertilizer ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_fire_tablet ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_fire_tablet ff_heist_loot_state matches 2.. if score $loot_fire_tablet ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_fish_food ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_fish_food ff_heist_loot_state matches 2.. if score $loot_fish_food ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_fishing_rod ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_fishing_rod ff_heist_loot_state matches 2.. if score $loot_fishing_rod ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_ghast_plushie ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_ghast_plushie ff_heist_loot_state matches 2.. if score $loot_ghast_plushie ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_golden_nautilus ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_golden_nautilus ff_heist_loot_state matches 2.. if score $loot_golden_nautilus ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_golden_sword ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_golden_sword ff_heist_loot_state matches 2.. if score $loot_golden_sword ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_hoverboard ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_hoverboard ff_heist_loot_state matches 2.. if score $loot_hoverboard ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_instant_coffee ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_instant_coffee ff_heist_loot_state matches 2.. if score $loot_instant_coffee ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_lady_bug ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_lady_bug ff_heist_loot_state matches 2.. if score $loot_lady_bug ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_leather ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_leather ff_heist_loot_state matches 2.. if score $loot_leather ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_lollipop ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_lollipop ff_heist_loot_state matches 2.. if score $loot_lollipop ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_lost_key ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_lost_key ff_heist_loot_state matches 2.. if score $loot_lost_key ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_muddy_sherd ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_muddy_sherd ff_heist_loot_state matches 2.. if score $loot_muddy_sherd ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_piglin_head ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_piglin_head ff_heist_loot_state matches 2.. if score $loot_piglin_head ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_pink_jelly ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_pink_jelly ff_heist_loot_state matches 2.. if score $loot_pink_jelly ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_plesiosaur_dna_cloth ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_plesiosaur_dna_cloth ff_heist_loot_state matches 2.. if score $loot_plesiosaur_dna_cloth ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_popcorn ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_popcorn ff_heist_loot_state matches 2.. if score $loot_popcorn ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_portal_core ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_portal_core ff_heist_loot_state matches 2.. if score $loot_portal_core ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_poster_tube ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_poster_tube ff_heist_loot_state matches 2.. if score $loot_poster_tube ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_pterodactyl_dna_cloth ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_pterodactyl_dna_cloth ff_heist_loot_state matches 2.. if score $loot_pterodactyl_dna_cloth ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_raptor_skull ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_raptor_skull ff_heist_loot_state matches 2.. if score $loot_raptor_skull ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_sand_dollar ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_sand_dollar ff_heist_loot_state matches 2.. if score $loot_sand_dollar ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_scrap_metal ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_scrap_metal ff_heist_loot_state matches 2.. if score $loot_scrap_metal ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_skeleton_plushie ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_skeleton_plushie ff_heist_loot_state matches 2.. if score $loot_skeleton_plushie ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_sniffer_dna_cloth ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_sniffer_dna_cloth ff_heist_loot_state matches 2.. if score $loot_sniffer_dna_cloth ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_soap ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_soap ff_heist_loot_state matches 2.. if score $loot_soap ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_sponge ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_sponge ff_heist_loot_state matches 2.. if score $loot_sponge ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_spyglass ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_spyglass ff_heist_loot_state matches 2.. if score $loot_spyglass ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_treasure_chest ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_treasure_chest ff_heist_loot_state matches 2.. if score $loot_treasure_chest ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_t_rex_dna_cloth ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_t_rex_dna_cloth ff_heist_loot_state matches 2.. if score $loot_t_rex_dna_cloth ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_t_rex_skull ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_t_rex_skull ff_heist_loot_state matches 2.. if score $loot_t_rex_skull ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_trike_dna_cloth ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_trike_dna_cloth ff_heist_loot_state matches 2.. if score $loot_trike_dna_cloth ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_trilobite_fossil ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_trilobite_fossil ff_heist_loot_state matches 2.. if score $loot_trilobite_fossil ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_vault ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_vault ff_heist_loot_state matches 2.. if score $loot_vault ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_velociraptor_dna_cloth ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_velociraptor_dna_cloth ff_heist_loot_state matches 2.. if score $loot_velociraptor_dna_cloth ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_velociraptor_statue ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_velociraptor_statue ff_heist_loot_state matches 2.. if score $loot_velociraptor_statue ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_warden ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_warden ff_heist_loot_state matches 2.. if score $loot_warden ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
execute if score $loot_water_balloon ff_heist_loot_state matches 2.. run scoreboard players add $taken_total ff_heist 1
execute if score $loot_water_balloon ff_heist_loot_state matches 2.. if score $loot_water_balloon ff_heist_loot_value matches 300.. run scoreboard players add $taken_high ff_heist 1
scoreboard players operation $taken_lowmed ff_heist = $taken_total ff_heist
scoreboard players operation $taken_lowmed ff_heist -= $taken_high ff_heist
function fossil_frights:game/heists/loot/high_exact
execute if score $high_exact ff_heist > $high_exact_prev ff_heist run function fossil_frights:game/heists/loot/steal_alert_high
execute if score $taken_lowmed ff_heist > $taken_lowmed_prev ff_heist run function fossil_frights:game/heists/loot/steal_alert_lowmed
execute if score $high_exact ff_heist matches 1.. run scoreboard players set $reopen_grace ff_heist 0
execute if score $high_exact ff_heist matches 0 run scoreboard players add $reopen_grace ff_heist 1
execute if score $reopen_grace ff_heist matches 4.. if score $security_by_loot ff_heist matches 1 run function fossil_frights:game/heists/loot/restore_alert_high
scoreboard players operation $high_exact_prev ff_heist = $high_exact ff_heist
scoreboard players operation $taken_high_prev ff_heist = $taken_high ff_heist
scoreboard players operation $taken_lowmed_prev ff_heist = $taken_lowmed ff_heist
