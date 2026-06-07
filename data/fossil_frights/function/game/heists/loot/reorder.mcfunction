scoreboard players set $heist_sidebar_slot ff_heist 50
scoreboard players reset $loot_placeholder_hard_1 ff_heist_sidebar
scoreboard players reset $loot_placeholder_hard_2 ff_heist_sidebar
scoreboard players reset $loot_febreeze_rod ff_heist_sidebar
scoreboard players reset $loot_fertilizer ff_heist_sidebar
scoreboard players reset $loot_water_balloon ff_heist_sidebar
scoreboard players reset $loot_chlorine_tablet ff_heist_sidebar
scoreboard players reset $loot_scrap_metal ff_heist_sidebar
scoreboard players reset $loot_soap ff_heist_sidebar
scoreboard players reset $loot_dry_ice ff_heist_sidebar
scoreboard players reset $loot_fire_tablet ff_heist_sidebar
scoreboard players reset $loot_golden_nautilus ff_heist_sidebar
scoreboard players reset $loot_skeleton_plushie ff_heist_sidebar
scoreboard players reset $loot_fish_food ff_heist_sidebar
scoreboard players reset $loot_copper_shuffle ff_heist_sidebar
scoreboard players reset $loot_instant_coffee ff_heist_sidebar
scoreboard players reset $loot_empty_popcorn ff_heist_sidebar
scoreboard players reset $loot_pink_jelly ff_heist_sidebar
scoreboard players reset $loot_leather ff_heist_sidebar
scoreboard players reset $loot_brush ff_heist_sidebar
scoreboard players reset $loot_sponge ff_heist_sidebar
scoreboard players reset $loot_cotton_candy ff_heist_sidebar
scoreboard players reset $loot_credit_reel ff_heist_sidebar
scoreboard players reset $loot_lady_bug ff_heist_sidebar
scoreboard players reset $loot_muddy_sherd ff_heist_sidebar
scoreboard players reset $loot_carrot_cake ff_heist_sidebar
scoreboard players reset $loot_cookie ff_heist_sidebar
scoreboard players reset $loot_coffee ff_heist_sidebar
scoreboard players reset $loot_poster_tube ff_heist_sidebar
scoreboard players reset $loot_ghast_plushie ff_heist_sidebar
scoreboard players reset $loot_piglin_head ff_heist_sidebar
scoreboard players reset $loot_popcorn ff_heist_sidebar
scoreboard players reset $loot_lollipop ff_heist_sidebar
scoreboard players reset $loot_fishing_rod ff_heist_sidebar
scoreboard players reset $loot_burger ff_heist_sidebar
scoreboard players reset $loot_chocolate_cake ff_heist_sidebar
scoreboard players reset $loot_ancient_scripture ff_heist_sidebar
scoreboard players reset $loot_chondrite ff_heist_sidebar
scoreboard players reset $loot_sand_dollar ff_heist_sidebar
scoreboard players reset $loot_trilobite_fossil ff_heist_sidebar
scoreboard players reset $loot_golden_sword ff_heist_sidebar
scoreboard players reset $loot_portal_core ff_heist_sidebar
scoreboard players reset $loot_spyglass ff_heist_sidebar
execute if score $loot_coffee ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_coffee ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_coffee ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_poster_tube ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_poster_tube ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_poster_tube ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_ghast_plushie ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_ghast_plushie ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_ghast_plushie ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_piglin_head ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_piglin_head ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_piglin_head ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_popcorn ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_popcorn ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_popcorn ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_lollipop ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_lollipop ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_lollipop ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fishing_rod ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_fishing_rod ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fishing_rod ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_burger ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_burger ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_burger ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_chocolate_cake ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_chocolate_cake ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_chocolate_cake ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_ancient_scripture ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_ancient_scripture ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_ancient_scripture ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_chondrite ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_chondrite ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_chondrite ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_sand_dollar ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_sand_dollar ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_sand_dollar ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_trilobite_fossil ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_trilobite_fossil ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_trilobite_fossil ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_golden_sword ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_golden_sword ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_golden_sword ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_portal_core ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_portal_core ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_portal_core ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_spyglass ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_spyglass ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_spyglass ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_febreeze_rod ff_heist_loot_state matches 1..3 if score $loot_febreeze_rod ff_heist_loot_value matches 200 run scoreboard players operation $loot_febreeze_rod ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_febreeze_rod ff_heist_loot_state matches 1..3 if score $loot_febreeze_rod ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fertilizer ff_heist_loot_state matches 1..3 if score $loot_fertilizer ff_heist_loot_value matches 200 run scoreboard players operation $loot_fertilizer ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fertilizer ff_heist_loot_state matches 1..3 if score $loot_fertilizer ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_water_balloon ff_heist_loot_state matches 1..3 if score $loot_water_balloon ff_heist_loot_value matches 200 run scoreboard players operation $loot_water_balloon ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_water_balloon ff_heist_loot_state matches 1..3 if score $loot_water_balloon ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_chlorine_tablet ff_heist_loot_state matches 1..3 if score $loot_chlorine_tablet ff_heist_loot_value matches 200 run scoreboard players operation $loot_chlorine_tablet ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_chlorine_tablet ff_heist_loot_state matches 1..3 if score $loot_chlorine_tablet ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_scrap_metal ff_heist_loot_state matches 1..3 if score $loot_scrap_metal ff_heist_loot_value matches 200 run scoreboard players operation $loot_scrap_metal ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_scrap_metal ff_heist_loot_state matches 1..3 if score $loot_scrap_metal ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_soap ff_heist_loot_state matches 1..3 if score $loot_soap ff_heist_loot_value matches 200 run scoreboard players operation $loot_soap ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_soap ff_heist_loot_state matches 1..3 if score $loot_soap ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_dry_ice ff_heist_loot_state matches 1..3 if score $loot_dry_ice ff_heist_loot_value matches 200 run scoreboard players operation $loot_dry_ice ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_dry_ice ff_heist_loot_state matches 1..3 if score $loot_dry_ice ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fire_tablet ff_heist_loot_state matches 1..3 if score $loot_fire_tablet ff_heist_loot_value matches 200 run scoreboard players operation $loot_fire_tablet ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fire_tablet ff_heist_loot_state matches 1..3 if score $loot_fire_tablet ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_golden_nautilus ff_heist_loot_state matches 1..3 if score $loot_golden_nautilus ff_heist_loot_value matches 200 run scoreboard players operation $loot_golden_nautilus ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_golden_nautilus ff_heist_loot_state matches 1..3 if score $loot_golden_nautilus ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_skeleton_plushie ff_heist_loot_state matches 1..3 if score $loot_skeleton_plushie ff_heist_loot_value matches 200 run scoreboard players operation $loot_skeleton_plushie ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_skeleton_plushie ff_heist_loot_state matches 1..3 if score $loot_skeleton_plushie ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fish_food ff_heist_loot_state matches 1..3 if score $loot_fish_food ff_heist_loot_value matches 200 run scoreboard players operation $loot_fish_food ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fish_food ff_heist_loot_state matches 1..3 if score $loot_fish_food ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_copper_shuffle ff_heist_loot_state matches 1..3 if score $loot_copper_shuffle ff_heist_loot_value matches 200 run scoreboard players operation $loot_copper_shuffle ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_copper_shuffle ff_heist_loot_state matches 1..3 if score $loot_copper_shuffle ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_instant_coffee ff_heist_loot_state matches 1..3 if score $loot_instant_coffee ff_heist_loot_value matches 200 run scoreboard players operation $loot_instant_coffee ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_instant_coffee ff_heist_loot_state matches 1..3 if score $loot_instant_coffee ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_empty_popcorn ff_heist_loot_state matches 1..3 if score $loot_empty_popcorn ff_heist_loot_value matches 200 run scoreboard players operation $loot_empty_popcorn ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_empty_popcorn ff_heist_loot_state matches 1..3 if score $loot_empty_popcorn ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_pink_jelly ff_heist_loot_state matches 1..3 if score $loot_pink_jelly ff_heist_loot_value matches 200 run scoreboard players operation $loot_pink_jelly ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_pink_jelly ff_heist_loot_state matches 1..3 if score $loot_pink_jelly ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_leather ff_heist_loot_state matches 1..3 if score $loot_leather ff_heist_loot_value matches 200 run scoreboard players operation $loot_leather ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_leather ff_heist_loot_state matches 1..3 if score $loot_leather ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_brush ff_heist_loot_state matches 1..3 if score $loot_brush ff_heist_loot_value matches 200 run scoreboard players operation $loot_brush ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_brush ff_heist_loot_state matches 1..3 if score $loot_brush ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_sponge ff_heist_loot_state matches 1..3 if score $loot_sponge ff_heist_loot_value matches 200 run scoreboard players operation $loot_sponge ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_sponge ff_heist_loot_state matches 1..3 if score $loot_sponge ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_cotton_candy ff_heist_loot_state matches 1..3 if score $loot_cotton_candy ff_heist_loot_value matches 200 run scoreboard players operation $loot_cotton_candy ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_cotton_candy ff_heist_loot_state matches 1..3 if score $loot_cotton_candy ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_credit_reel ff_heist_loot_state matches 1..3 if score $loot_credit_reel ff_heist_loot_value matches 200 run scoreboard players operation $loot_credit_reel ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_credit_reel ff_heist_loot_state matches 1..3 if score $loot_credit_reel ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_lady_bug ff_heist_loot_state matches 1..3 if score $loot_lady_bug ff_heist_loot_value matches 200 run scoreboard players operation $loot_lady_bug ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_lady_bug ff_heist_loot_state matches 1..3 if score $loot_lady_bug ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_muddy_sherd ff_heist_loot_state matches 1..3 if score $loot_muddy_sherd ff_heist_loot_value matches 200 run scoreboard players operation $loot_muddy_sherd ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_muddy_sherd ff_heist_loot_state matches 1..3 if score $loot_muddy_sherd ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_carrot_cake ff_heist_loot_state matches 1..3 if score $loot_carrot_cake ff_heist_loot_value matches 200 run scoreboard players operation $loot_carrot_cake ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_carrot_cake ff_heist_loot_state matches 1..3 if score $loot_carrot_cake ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_cookie ff_heist_loot_state matches 1..3 if score $loot_cookie ff_heist_loot_value matches 200 run scoreboard players operation $loot_cookie ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_cookie ff_heist_loot_state matches 1..3 if score $loot_cookie ff_heist_loot_value matches 200 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_febreeze_rod ff_heist_loot_state matches 1..3 if score $loot_febreeze_rod ff_heist_loot_value matches 250 run scoreboard players operation $loot_febreeze_rod ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_febreeze_rod ff_heist_loot_state matches 1..3 if score $loot_febreeze_rod ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fertilizer ff_heist_loot_state matches 1..3 if score $loot_fertilizer ff_heist_loot_value matches 250 run scoreboard players operation $loot_fertilizer ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fertilizer ff_heist_loot_state matches 1..3 if score $loot_fertilizer ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_water_balloon ff_heist_loot_state matches 1..3 if score $loot_water_balloon ff_heist_loot_value matches 250 run scoreboard players operation $loot_water_balloon ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_water_balloon ff_heist_loot_state matches 1..3 if score $loot_water_balloon ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_chlorine_tablet ff_heist_loot_state matches 1..3 if score $loot_chlorine_tablet ff_heist_loot_value matches 250 run scoreboard players operation $loot_chlorine_tablet ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_chlorine_tablet ff_heist_loot_state matches 1..3 if score $loot_chlorine_tablet ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_scrap_metal ff_heist_loot_state matches 1..3 if score $loot_scrap_metal ff_heist_loot_value matches 250 run scoreboard players operation $loot_scrap_metal ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_scrap_metal ff_heist_loot_state matches 1..3 if score $loot_scrap_metal ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_soap ff_heist_loot_state matches 1..3 if score $loot_soap ff_heist_loot_value matches 250 run scoreboard players operation $loot_soap ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_soap ff_heist_loot_state matches 1..3 if score $loot_soap ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_dry_ice ff_heist_loot_state matches 1..3 if score $loot_dry_ice ff_heist_loot_value matches 250 run scoreboard players operation $loot_dry_ice ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_dry_ice ff_heist_loot_state matches 1..3 if score $loot_dry_ice ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fire_tablet ff_heist_loot_state matches 1..3 if score $loot_fire_tablet ff_heist_loot_value matches 250 run scoreboard players operation $loot_fire_tablet ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fire_tablet ff_heist_loot_state matches 1..3 if score $loot_fire_tablet ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_golden_nautilus ff_heist_loot_state matches 1..3 if score $loot_golden_nautilus ff_heist_loot_value matches 250 run scoreboard players operation $loot_golden_nautilus ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_golden_nautilus ff_heist_loot_state matches 1..3 if score $loot_golden_nautilus ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_skeleton_plushie ff_heist_loot_state matches 1..3 if score $loot_skeleton_plushie ff_heist_loot_value matches 250 run scoreboard players operation $loot_skeleton_plushie ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_skeleton_plushie ff_heist_loot_state matches 1..3 if score $loot_skeleton_plushie ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_fish_food ff_heist_loot_state matches 1..3 if score $loot_fish_food ff_heist_loot_value matches 250 run scoreboard players operation $loot_fish_food ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_fish_food ff_heist_loot_state matches 1..3 if score $loot_fish_food ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_copper_shuffle ff_heist_loot_state matches 1..3 if score $loot_copper_shuffle ff_heist_loot_value matches 250 run scoreboard players operation $loot_copper_shuffle ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_copper_shuffle ff_heist_loot_state matches 1..3 if score $loot_copper_shuffle ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_instant_coffee ff_heist_loot_state matches 1..3 if score $loot_instant_coffee ff_heist_loot_value matches 250 run scoreboard players operation $loot_instant_coffee ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_instant_coffee ff_heist_loot_state matches 1..3 if score $loot_instant_coffee ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_empty_popcorn ff_heist_loot_state matches 1..3 if score $loot_empty_popcorn ff_heist_loot_value matches 250 run scoreboard players operation $loot_empty_popcorn ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_empty_popcorn ff_heist_loot_state matches 1..3 if score $loot_empty_popcorn ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_pink_jelly ff_heist_loot_state matches 1..3 if score $loot_pink_jelly ff_heist_loot_value matches 250 run scoreboard players operation $loot_pink_jelly ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_pink_jelly ff_heist_loot_state matches 1..3 if score $loot_pink_jelly ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_leather ff_heist_loot_state matches 1..3 if score $loot_leather ff_heist_loot_value matches 250 run scoreboard players operation $loot_leather ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_leather ff_heist_loot_state matches 1..3 if score $loot_leather ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_brush ff_heist_loot_state matches 1..3 if score $loot_brush ff_heist_loot_value matches 250 run scoreboard players operation $loot_brush ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_brush ff_heist_loot_state matches 1..3 if score $loot_brush ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_sponge ff_heist_loot_state matches 1..3 if score $loot_sponge ff_heist_loot_value matches 250 run scoreboard players operation $loot_sponge ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_sponge ff_heist_loot_state matches 1..3 if score $loot_sponge ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_cotton_candy ff_heist_loot_state matches 1..3 if score $loot_cotton_candy ff_heist_loot_value matches 250 run scoreboard players operation $loot_cotton_candy ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_cotton_candy ff_heist_loot_state matches 1..3 if score $loot_cotton_candy ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_credit_reel ff_heist_loot_state matches 1..3 if score $loot_credit_reel ff_heist_loot_value matches 250 run scoreboard players operation $loot_credit_reel ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_credit_reel ff_heist_loot_state matches 1..3 if score $loot_credit_reel ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_lady_bug ff_heist_loot_state matches 1..3 if score $loot_lady_bug ff_heist_loot_value matches 250 run scoreboard players operation $loot_lady_bug ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_lady_bug ff_heist_loot_state matches 1..3 if score $loot_lady_bug ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_muddy_sherd ff_heist_loot_state matches 1..3 if score $loot_muddy_sherd ff_heist_loot_value matches 250 run scoreboard players operation $loot_muddy_sherd ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_muddy_sherd ff_heist_loot_state matches 1..3 if score $loot_muddy_sherd ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_carrot_cake ff_heist_loot_state matches 1..3 if score $loot_carrot_cake ff_heist_loot_value matches 250 run scoreboard players operation $loot_carrot_cake ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_carrot_cake ff_heist_loot_state matches 1..3 if score $loot_carrot_cake ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_cookie ff_heist_loot_state matches 1..3 if score $loot_cookie ff_heist_loot_value matches 250 run scoreboard players operation $loot_cookie ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_cookie ff_heist_loot_state matches 1..3 if score $loot_cookie ff_heist_loot_value matches 250 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_placeholder_hard_1 ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_placeholder_hard_1 ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_placeholder_hard_1 ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
execute if score $loot_placeholder_hard_2 ff_heist_loot_state matches 1..3 run scoreboard players operation $loot_placeholder_hard_2 ff_heist_sidebar = $heist_sidebar_slot ff_heist
execute if score $loot_placeholder_hard_2 ff_heist_loot_state matches 1..3 run scoreboard players remove $heist_sidebar_slot ff_heist 1
