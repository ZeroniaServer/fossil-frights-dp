function fossil_frights:tasks/tracker/setup

scoreboard players set $task_selected_total ff_task_state 0
scoreboard players set $task_completed_total ff_task_state 0
scoreboard players set $hazard_pending ff_task_state 0
scoreboard players set $hazard_delay ff_task_state 0

data modify storage fossil_frights:tasks tasks set value []
scoreboard players set #easy_pool_count ff_task_state 0
scoreboard players set #medium_pool_count ff_task_state 0
scoreboard players set #hard_pool_count ff_task_state 0
scoreboard players set #final_pool_count ff_task_state 0

function fossil_frights:tasks/register {id: "check_security", difficulty: "easy", custom_icon: false, sidebar_index: 39}
function fossil_frights:tasks/register {id: "fire_pottery", difficulty: "easy", custom_icon: false, sidebar_index: 38}
function fossil_frights:tasks/register {id: "check_ankylo", difficulty: "easy", custom_icon: false, sidebar_index: 37}
function fossil_frights:tasks/register {id: "climb_the_tower", difficulty: "easy", custom_icon: false, sidebar_index: 36}
function fossil_frights:tasks/register {id: "count_shells", difficulty: "easy", custom_icon: false, sidebar_index: 35}
function fossil_frights:tasks/register {id: "count_toes", difficulty: "easy", custom_icon: false, sidebar_index: 34}
function fossil_frights:tasks/register {id: "bathroom_leak", difficulty: "easy", custom_icon: false, sidebar_index: 33}
function fossil_frights:tasks/register {id: "toilet_clog", difficulty: "easy", custom_icon: false, sidebar_index: 32}
function fossil_frights:tasks/register {id: "polish_bell", difficulty: "easy", custom_icon: false, sidebar_index: 31}
function fossil_frights:tasks/register {id: "lock_register", difficulty: "easy", custom_icon: false, sidebar_index: 30}
function fossil_frights:tasks/register {id: "static_buildup", difficulty: "easy", custom_icon: false, sidebar_index: 29}
function fossil_frights:tasks/register {id: "reset_salt_level", difficulty: "easy", custom_icon: false, sidebar_index: 28}
function fossil_frights:tasks/register {id: "reset_fountain", difficulty: "easy", custom_icon: false, sidebar_index: 27}
function fossil_frights:tasks/register {id: "visit_jurassic", difficulty: "easy", custom_icon: false, sidebar_index: 26}
function fossil_frights:tasks/register {id: "visit_neogene", difficulty: "easy", custom_icon: false, sidebar_index: 25}
function fossil_frights:tasks/register {id: "visit_silurian", difficulty: "easy", custom_icon: false, sidebar_index: 24}
function fossil_frights:tasks/register {id: "visit_archean", difficulty: "easy", custom_icon: false, sidebar_index: 23}
function fossil_frights:tasks/register {id: "dive_into_well", difficulty: "easy", custom_icon: false, sidebar_index: 22}
function fossil_frights:tasks/register {id: "swat_flies", difficulty: "easy", custom_icon: false, sidebar_index: 40}
function fossil_frights:tasks/register {id: "water_temp", difficulty: "easy", custom_icon: false, sidebar_index: 41}
function fossil_frights:tasks/register {id: "fix_cracked_egg", difficulty: "easy", custom_icon: false, sidebar_index: 42}
function fossil_frights:tasks/register {id: "tnt_test", difficulty: "easy", custom_icon: false, sidebar_index: 43}
function fossil_frights:tasks/register {id: "sweep_popcorn", difficulty: "easy", custom_icon: false, sidebar_index: 44}
function fossil_frights:tasks/register {id: "dig_sand", difficulty: "easy", custom_icon: false, sidebar_index: 45}
function fossil_frights:tasks/register {id: "fix_mars", difficulty: "easy", custom_icon: false, sidebar_index: 46}
function fossil_frights:tasks/easy/fix_mars/cleanup
function fossil_frights:tasks/register {id: "make_some_noise", difficulty: "easy", custom_icon: false, sidebar_index: 47}

function fossil_frights:tasks/register {id: "chlorinify", difficulty: "medium", custom_icon: false, sidebar_index: 21}
function fossil_frights:tasks/register {id: "credit_reel", difficulty: "medium", custom_icon: false, sidebar_index: 20}
function fossil_frights:tasks/register {id: "cool_it", difficulty: "medium", custom_icon: false, sidebar_index: 19}
function fossil_frights:tasks/register {id: "heat_it_up", difficulty: "medium", custom_icon: false, sidebar_index: 18}
function fossil_frights:tasks/register {id: "sponge_up_spill", difficulty: "medium", custom_icon: false, sidebar_index: 17}
function fossil_frights:tasks/register {id: "feed_the_plants", difficulty: "medium", custom_icon: false, sidebar_index: 16}
function fossil_frights:tasks/register {id: "refill_coffee", difficulty: "medium", custom_icon: false, sidebar_index: 15}
function fossil_frights:tasks/register {id: "coffee_top_up", difficulty: "medium", custom_icon: false, sidebar_index: 14}
function fossil_frights:tasks/register {id: "replenish_soap", difficulty: "medium", custom_icon: false, sidebar_index: 13}
function fossil_frights:tasks/register {id: "restock_plushies", difficulty: "medium", custom_icon: false, sidebar_index: 12}
function fossil_frights:tasks/register {id: "revitalize_coral", difficulty: "medium", custom_icon: false, sidebar_index: 46}
function fossil_frights:tasks/register {id: "shark_bait", difficulty: "medium", custom_icon: false, sidebar_index: 47}
function fossil_frights:tasks/register {id: "smelly_toilet", difficulty: "medium", custom_icon: false, sidebar_index: 48}
function fossil_frights:tasks/register {id: "wash_muddy_sherd", difficulty: "medium", custom_icon: false, sidebar_index: 49}
function fossil_frights:tasks/register {id: "feed_parrot", difficulty: "medium", custom_icon: false, sidebar_index: 50}
function fossil_frights:tasks/register {id: "water_crops", difficulty: "medium", custom_icon: false, sidebar_index: 51}
scoreboard players set $water_crops_pending ff_task_state 0
function fossil_frights:tasks/register {id: "picnic_with_trike", difficulty: "medium", custom_icon: false, sidebar_index: 52}
function fossil_frights:tasks/register {id: "nautilus_guard", difficulty: "medium", custom_icon: false, sidebar_index: 53}
function fossil_frights:tasks/register {id: "feed_the_fish", difficulty: "medium", custom_icon: false, sidebar_index: 54}
function fossil_frights:tasks/register {id: "popcorn_buckets", difficulty: "medium", custom_icon: false, sidebar_index: 55}
function fossil_frights:tasks/register {id: "bring_brush", difficulty: "medium", custom_icon: false, sidebar_index: 56}
function fossil_frights:tasks/register {id: "brush_delivery", difficulty: "medium", custom_icon: false, sidebar_index: 57}
function fossil_frights:tasks/register {id: "fix_sculker", difficulty: "medium", custom_icon: false, sidebar_index: 58}
function fossil_frights:tasks/register {id: "ancient_portal", difficulty: "medium", custom_icon: false, sidebar_index: 59}
scoreboard players set $ancient_portal_timer ff_task_state 0
scoreboard players set $ancient_portal_dest ff_task_state 0
function fossil_frights:tasks/register {id: "refill_ice", difficulty: "medium", custom_icon: false, sidebar_index: 60}

function fossil_frights:tasks/register {id: "star_gazing", difficulty: "hard", custom_icon: false, sidebar_index: 11}
scoreboard players set $star_gazing_answer ff_task_state 0
scoreboard players set $star_gazing_rotation ff_task_state 0
function fossil_frights:tasks/register {id: "glowberry_trees", difficulty: "hard", custom_icon: false, sidebar_index: 10}
scoreboard players set $glowberry_tree_1_watered ff_task_state 0
scoreboard players set $glowberry_tree_2_watered ff_task_state 0
scoreboard players set $glowberry_tree_1_pending ff_task_state 0
scoreboard players set $glowberry_tree_2_pending ff_task_state 0
function fossil_frights:tasks/register {id: "return_the_key", difficulty: "hard", custom_icon: false, sidebar_index: 9}
function fossil_frights:tasks/register {id: "skincare_routine", difficulty: "hard", custom_icon: false, sidebar_index: 8}
scoreboard players set $skincare_routine_pending ff_task_state 0
function fossil_frights:tasks/register {id: "feed_the_bats", difficulty: "hard", custom_icon: false, sidebar_index: 7}
function fossil_frights:tasks/register {id: "a_c_reset", difficulty: "hard", custom_icon: false, sidebar_index: 6}
scoreboard players set $a_c_reset_variant ff_task_state 0
scoreboard players set $a_c_btn_1_pressed ff_task_state 0
scoreboard players set $a_c_btn_2_pressed ff_task_state 0
scoreboard players set $a_c_btn_3_pressed ff_task_state 0
scoreboard players set $a_c_btn_4_pressed ff_task_state 0
scoreboard players set $a_c_fan_timer ff_task_state 0
scoreboard players set $a_c_timer_active ff_task_state 0
scoreboard players set $a_c_fan_spin ff_task_state 0
scoreboard players set $a_c_fan_rot_state ff_task_state 0
function fossil_frights:tasks/register {id: "defrost_freezer", difficulty: "hard", custom_icon: false, sidebar_index: 5}
function fossil_frights:tasks/register {id: "the_lost_code", difficulty: "hard", custom_icon: false, sidebar_index: 4}
scoreboard players set $the_lost_code_seq ff_task_state 0
function fossil_frights:tasks/register {id: "pig_wrangler", difficulty: "hard", custom_icon: true, sidebar_index: 11}
scoreboard players set $pig_wrangler_pick ff_task_state 0
scoreboard players set $pig_wrangler_in_pen ff_task_state 0
scoreboard players set $pig_wrangler_fed ff_task_state 0
scoreboard players set $pig_wrangler_tower_seen ff_task_state 0
function fossil_frights:tasks/register {id: "holy_grail", difficulty: "hard", custom_icon: false, sidebar_index: 10}
scoreboard players set $holy_grail_pick ff_task_state 0
scoreboard players set $holy_grail_reward ff_task_state 0
function fossil_frights:tasks/register {id: "hoveraptor", difficulty: "hard", custom_icon: false, sidebar_index: 9}
function fossil_frights:tasks/register {id: "fertilize_plant", difficulty: "hard", custom_icon: false, sidebar_index: 3}
scoreboard players set $fertilize_plant_pick ff_task_state 0
function fossil_frights:tasks/register {id: "basketball_dance", difficulty: "hard", custom_icon: false, sidebar_index: 2}
scoreboard players set $basketball_dance_timer ff_task_state 0
scoreboard players set $basketball_dance_pose ff_task_state 0
scoreboard players set $basketball_dance_pose_tick ff_task_state 0
scoreboard players set $basketball_dance_head_tossed ff_task_state 0
scoreboard players set $basketball_dance_head_tossed_once ff_task_state 0
function fossil_frights:tasks/register {id: "evolution", difficulty: "hard", custom_icon: false, sidebar_index: 1}
scoreboard players set $evolution_step ff_task_state 0
scoreboard players set $evolution_flash_red ff_task_state 0
scoreboard players set $evolution_hit ff_task_state 0
scoreboard players set $evolution_was_correct ff_task_state 0

function fossil_frights:tasks/register {id: "final_task", difficulty: "final", custom_icon: false, sidebar_index: 1}
scoreboard players set $final_task_dino ff_task_state 0
scoreboard players set $final_task_dna_done ff_task_state 0
scoreboard players set $final_task_fx_timer ff_task_state 0
scoreboard players set $final_task_preview_delay ff_task_state 0
scoreboard players set $final_task_item ff_task_state 0
scoreboard players set $final_task_item_done ff_task_state 0
scoreboard players set $final_task_centrifuge_timer ff_task_state 0

function fossil_frights:tasks/tracker/refresh

function fossil_frights:tasks/easy/fire_pottery/load
function fossil_frights:tasks/hard/basketball_dance/load
