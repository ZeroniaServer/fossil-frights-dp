function fossil_frights:tasks/tracker/hide
function fossil_frights:tasks/tracker/update_title
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if entity @a[limit=1] run function fossil_frights:tasks/tracker/show

function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "check_security"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "check_security"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "fire_pottery"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "check_ankylo"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "climb_the_tower"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "count_shells"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "count_toes"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "bathroom_leak"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "toilet_clog"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "polish_bell"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "lock_register"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "static_buildup"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "reset_salt_level"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "reset_fountain"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "visit_jurassic"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "visit_neogene"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "visit_silurian"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "visit_archean"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "dive_into_well"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "swat_flies"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "water_temp"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "fix_cracked_egg"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "tnt_test"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "sweep_popcorn"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "dig_sand"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "fix_mars"}
function fossil_frights:tasks/tracker/update_sidebar/easy_task {"task": "make_some_noise"}

function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "chlorinify"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "credit_reel"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "cool_it"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "heat_it_up"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "sponge_up_spill"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "feed_the_plants"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "refill_coffee"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "refill_ice"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "coffee_refill"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "replenish_soap"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "restock_plushies"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "revitalize_coral"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "shark_bait"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "smelly_toilet"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "wash_muddy_sherd"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "feed_parrot"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "water_crops"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "picnic_with_trike"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "nautilus_guard"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "feed_the_fish"}
function fossil_frights:tasks/tracker/update_sidebar/medium_task {"task": "popcorn_buckets"}

function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "star_gazing"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "glowberry_trees"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "return_the_key"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "skincare_routine"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "feed_the_bats"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "a_c_reset"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "deforst_freezer"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "the_lost_code"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "fertilize_plant"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "basketball_dance"}
function fossil_frights:tasks/tracker/update_sidebar/hard_task {"task": "evolution"}

function fossil_frights:tasks/tracker/update_sidebar/final_task {"task": "final_task"}

execute if score $game_running ff_game_state matches 1 run function fossil_frights:compass/markers/sync
