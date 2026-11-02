function fossil_frights:tasks/tracker/hide
kill @e[type=minecraft:armor_stand,tag=ff_task_compass_target]
kill @e[type=minecraft:text_display,tag=ff_day_1_book_marker]
kill @e[type=minecraft:item_display,tag=ff_day_1_book_marker]
scoreboard players set $task_selected_total ff_task_state 0
scoreboard players set $task_completed_total ff_task_state 0
scoreboard players set $tasks_seen_day ff_speedrun_live 0
scoreboard players set $hazard_pending ff_task_state 0
scoreboard players set $hazard_delay ff_task_state 0

scoreboard players set $check_security_sel ff_task_state 0
scoreboard players set $check_security_done ff_task_state 0
scoreboard players set $climb_the_tower_sel ff_task_state 0
scoreboard players set $climb_the_tower_done ff_task_state 0
scoreboard players set $count_shells_sel ff_task_state 0
scoreboard players set $count_shells_done ff_task_state 0
scoreboard players set $count_toes_sel ff_task_state 0
scoreboard players set $count_toes_done ff_task_state 0
scoreboard players set $bathroom_leak_sel ff_task_state 0
scoreboard players set $bathroom_leak_done ff_task_state 0
scoreboard players set $toilet_clog_sel ff_task_state 0
scoreboard players set $toilet_clog_done ff_task_state 0
scoreboard players set $polish_bell_sel ff_task_state 0
scoreboard players set $polish_bell_done ff_task_state 0
scoreboard players set $lock_register_sel ff_task_state 0
scoreboard players set $lock_register_done ff_task_state 0
scoreboard players set $static_buildup_sel ff_task_state 0
scoreboard players set $static_buildup_done ff_task_state 0
scoreboard players set $reset_salt_level_sel ff_task_state 0
scoreboard players set $reset_salt_level_done ff_task_state 0
scoreboard players set $reset_fountain_sel ff_task_state 0
scoreboard players set $reset_fountain_done ff_task_state 0
scoreboard players set $visit_neogene_sel ff_task_state 0
scoreboard players set $visit_neogene_done ff_task_state 0
scoreboard players set $visit_silurian_sel ff_task_state 0
scoreboard players set $visit_silurian_done ff_task_state 0
scoreboard players set $visit_archean_sel ff_task_state 0
scoreboard players set $visit_archean_done ff_task_state 0
scoreboard players set $dive_into_outhouse_sel ff_task_state 0
scoreboard players set $dive_into_outhouse_done ff_task_state 0
scoreboard players set $water_temp_sel ff_task_state 0
scoreboard players set $water_temp_done ff_task_state 0
scoreboard players set $fix_cracked_egg_sel ff_task_state 0
scoreboard players set $fix_cracked_egg_done ff_task_state 0
scoreboard players set $tnt_test_sel ff_task_state 0
scoreboard players set $tnt_test_done ff_task_state 0
scoreboard players set $sweep_popcorn_sel ff_task_state 0
scoreboard players set $sweep_popcorn_done ff_task_state 0
scoreboard players set $fix_neptune_sel ff_task_state 0
scoreboard players set $fix_neptune_done ff_task_state 0
scoreboard players set $make_some_noise_sel ff_task_state 0
scoreboard players set $make_some_noise_done ff_task_state 0
scoreboard players set $sit_on_lap_sel ff_task_state 0
scoreboard players set $sit_on_lap_done ff_task_state 0
scoreboard players set $smell_gingerbread_sel ff_task_state 0
scoreboard players set $smell_gingerbread_done ff_task_state 0
scoreboard players set $kiss_t_rex_sel ff_task_state 0
scoreboard players set $kiss_t_rex_done ff_task_state 0
scoreboard players set $chimney_sweep_sel ff_task_state 0
scoreboard players set $chimney_sweep_done ff_task_state 0
scoreboard players set $scrape_resin_sel ff_task_state 0
scoreboard players set $scrape_resin_done ff_task_state 0

scoreboard players set $chlorinify_sel ff_task_state 0
scoreboard players set $chlorinify_done ff_task_state 0
scoreboard players set $credit_reel_sel ff_task_state 0
scoreboard players set $credit_reel_done ff_task_state 0
scoreboard players set $cool_it_sel ff_task_state 0
scoreboard players set $cool_it_done ff_task_state 0
scoreboard players set $feed_the_plants_sel ff_task_state 0
scoreboard players set $feed_the_plants_done ff_task_state 0
scoreboard players set $refill_ice_sel ff_task_state 0
scoreboard players set $refill_ice_done ff_task_state 0
scoreboard players set $replenish_soap_sel ff_task_state 0
scoreboard players set $replenish_soap_done ff_task_state 0
scoreboard players set $restock_plushies_sel ff_task_state 0
scoreboard players set $restock_plushies_done ff_task_state 0
scoreboard players set $revitalize_coral_sel ff_task_state 0
scoreboard players set $revitalize_coral_done ff_task_state 0
scoreboard players set $shark_bait_sel ff_task_state 0
scoreboard players set $shark_bait_done ff_task_state 0
scoreboard players set $smelly_toilet_sel ff_task_state 0
scoreboard players set $smelly_toilet_done ff_task_state 0
scoreboard players set $wash_icy_sherd_sel ff_task_state 0
scoreboard players set $wash_icy_sherd_done ff_task_state 0
scoreboard players set $feed_parrot_sel ff_task_state 0
scoreboard players set $feed_parrot_done ff_task_state 0
scoreboard players set $picnic_with_trike_sel ff_task_state 0
scoreboard players set $picnic_with_trike_done ff_task_state 0
scoreboard players set $nautilus_guard_sel ff_task_state 0
scoreboard players set $nautilus_guard_done ff_task_state 0
scoreboard players set $feed_the_fish_sel ff_task_state 0
scoreboard players set $feed_the_fish_done ff_task_state 0
scoreboard players set $popcorn_buckets_sel ff_task_state 0
scoreboard players set $popcorn_buckets_done ff_task_state 0
scoreboard players set $fix_sculker_sel ff_task_state 0
scoreboard players set $fix_sculker_done ff_task_state 0
scoreboard players set $ancient_portal_sel ff_task_state 0
scoreboard players set $ancient_portal_done ff_task_state 0

scoreboard players set $star_gazing_sel ff_task_state 0
scoreboard players set $star_gazing_done ff_task_state 0
scoreboard players set $star_gazing_answer ff_task_state 0
scoreboard players set $star_gazing_rotation ff_task_state 0
scoreboard players set $glowberry_tree_1_watered ff_task_state 0
scoreboard players set $glowberry_tree_2_watered ff_task_state 0
scoreboard players set $glowberry_tree_1_pending ff_task_state 0
scoreboard players set $glowberry_tree_2_pending ff_task_state 0
scoreboard players set $return_the_key_sel ff_task_state 0
scoreboard players set $return_the_key_done ff_task_state 0
scoreboard players set $feed_the_bats_sel ff_task_state 0
scoreboard players set $feed_the_bats_done ff_task_state 0
scoreboard players set $a_c_reset_sel ff_task_state 0
scoreboard players set $a_c_reset_done ff_task_state 0
scoreboard players set $a_c_reset_variant ff_task_state 0
scoreboard players set $pig_wrangler_sel ff_task_state 0
scoreboard players set $pig_wrangler_done ff_task_state 0
scoreboard players set $pig_wrangler_tower_seen ff_task_state 0
scoreboard players set $holy_grail_sel ff_task_state 0
scoreboard players set $holy_grail_done ff_task_state 0
scoreboard players set $holy_grail_pick ff_task_state 0
scoreboard players set $hoveraptor_sel ff_task_state 0
scoreboard players set $hoveraptor_done ff_task_state 0
scoreboard players set $evolution_sel ff_task_state 0
scoreboard players set $evolution_done ff_task_state 0
scoreboard players set $evolution_step ff_task_state 0
scoreboard players set $evolution_flash_red ff_task_state 0
scoreboard players set $evolution_hit ff_task_state 0
scoreboard players set $evolution_was_correct ff_task_state 0


scoreboard players reset $tt_check_security ff_task_tracker
scoreboard players reset $tt_climb_the_tower ff_task_tracker
scoreboard players reset $tt_count_shells ff_task_tracker
scoreboard players reset $tt_count_toes ff_task_tracker
scoreboard players reset $tt_bathroom_leak ff_task_tracker
scoreboard players reset $tt_toilet_clog ff_task_tracker
scoreboard players reset $tt_polish_bell ff_task_tracker
scoreboard players reset $tt_lock_register ff_task_tracker
scoreboard players reset $tt_static_buildup ff_task_tracker
scoreboard players reset $tt_reset_salt_level ff_task_tracker
scoreboard players reset $tt_reset_fountain ff_task_tracker
scoreboard players reset $tt_visit_neogene ff_task_tracker
scoreboard players reset $tt_visit_silurian ff_task_tracker
scoreboard players reset $tt_sit_on_lap ff_task_tracker
scoreboard players reset $tt_smell_gingerbread ff_task_tracker
scoreboard players reset $tt_kiss_t_rex ff_task_tracker
scoreboard players reset $tt_chimney_sweep ff_task_tracker
scoreboard players reset $tt_scrape_resin ff_task_tracker
scoreboard players reset $tt_visit_archean ff_task_tracker
scoreboard players reset $tt_dive_into_outhouse ff_task_tracker
scoreboard players reset $tt_water_temp ff_task_tracker
scoreboard players reset $tt_fix_cracked_egg ff_task_tracker
scoreboard players reset $tt_tnt_test ff_task_tracker
scoreboard players reset $tt_sweep_popcorn ff_task_tracker
scoreboard players reset $tt_chlorinify ff_task_tracker
scoreboard players reset $tt_credit_reel ff_task_tracker
scoreboard players reset $tt_cool_it ff_task_tracker
scoreboard players reset $tt_feed_the_plants ff_task_tracker
scoreboard players reset $tt_refill_ice ff_task_tracker
scoreboard players reset $tt_replenish_soap ff_task_tracker
scoreboard players reset $tt_restock_plushies ff_task_tracker
scoreboard players reset $tt_revitalize_coral ff_task_tracker
scoreboard players reset $tt_shark_bait ff_task_tracker
scoreboard players reset $tt_smelly_toilet ff_task_tracker
scoreboard players reset $tt_wash_icy_sherd ff_task_tracker
scoreboard players reset $tt_feed_parrot ff_task_tracker
scoreboard players reset $tt_picnic_with_trike ff_task_tracker
scoreboard players reset $tt_nautilus_guard ff_task_tracker
scoreboard players reset $tt_feed_the_fish ff_task_tracker
scoreboard players reset $tt_popcorn_buckets ff_task_tracker
scoreboard players reset $tt_fix_sculker ff_task_tracker
scoreboard players reset $tt_ancient_portal ff_task_tracker
scoreboard players reset $tt_star_gazing ff_task_tracker
scoreboard players reset $tt_return_the_key ff_task_tracker
scoreboard players reset $tt_feed_the_bats ff_task_tracker
scoreboard players reset $tt_a_c_reset ff_task_tracker
scoreboard players reset $tt_pig_wrangler ff_task_tracker
scoreboard players reset $tt_holy_grail ff_task_tracker
scoreboard players reset $tt_hoveraptor ff_task_tracker
scoreboard players reset $tt_evolution ff_task_tracker

function fossil_frights:cameras/reset
function fossil_frights:tasks/easy/climb_the_tower/reset
function fossil_frights:tasks/easy/count_shells/reset
function fossil_frights:tasks/easy/count_toes/reset
function fossil_frights:tasks/easy/bathroom_leak/reset
function fossil_frights:tasks/easy/toilet_clog/reset
function fossil_frights:tasks/easy/polish_bell/reset
function fossil_frights:tasks/easy/lock_register/reset
function fossil_frights:tasks/easy/static_buildup/reset
function fossil_frights:tasks/easy/reset_salt_level/reset
function fossil_frights:tasks/easy/reset_fountain/reset
function fossil_frights:tasks/easy/visit_neogene/reset
function fossil_frights:tasks/easy/visit_silurian/reset
function fossil_frights:tasks/easy/visit_archean/reset
function fossil_frights:tasks/easy/dive_into_outhouse/reset
function fossil_frights:tasks/easy/water_temp/reset
function fossil_frights:tasks/easy/fix_cracked_egg/reset
function fossil_frights:tasks/easy/tnt_test/reset
function fossil_frights:tasks/easy/sweep_popcorn/reset
function fossil_frights:tasks/easy/fix_neptune/reset
function fossil_frights:tasks/easy/make_some_noise/reset
function fossil_frights:tasks/easy/sit_on_lap/reset
function fossil_frights:tasks/easy/smell_gingerbread/reset
function fossil_frights:tasks/easy/kiss_t_rex/reset
function fossil_frights:tasks/easy/chimney_sweep/reset
function fossil_frights:tasks/easy/scrape_resin/reset
function fossil_frights:tasks/medium/chlorinify/reset
function fossil_frights:tasks/medium/credit_reel/reset
function fossil_frights:tasks/medium/cool_it/reset
function fossil_frights:tasks/medium/feed_the_plants/reset
function fossil_frights:tasks/medium/refill_ice/reset
function fossil_frights:tasks/medium/replenish_soap/reset
function fossil_frights:tasks/medium/restock_plushies/reset
function fossil_frights:tasks/medium/revitalize_coral/reset
function fossil_frights:tasks/medium/shark_bait/reset
function fossil_frights:tasks/medium/smelly_toilet/reset
function fossil_frights:tasks/medium/wash_icy_sherd/reset
function fossil_frights:tasks/medium/feed_parrot/reset
function fossil_frights:tasks/medium/picnic_with_trike/reset
function fossil_frights:tasks/medium/nautilus_guard/reset
function fossil_frights:tasks/medium/feed_the_fish/reset
function fossil_frights:tasks/medium/popcorn_buckets/reset
function fossil_frights:tasks/medium/fix_sculker/reset
function fossil_frights:tasks/medium/ancient_portal/reset
function fossil_frights:tasks/hard/star_gazing/reset
function fossil_frights:tasks/hard/return_the_key/reset
function fossil_frights:tasks/hard/feed_the_bats/reset
function fossil_frights:tasks/hard/a_c_reset/reset
function fossil_frights:tasks/hard/holy_grail/reset
function fossil_frights:tasks/hard/hoveraptor/reset
function fossil_frights:tasks/hard/evolution/reset
