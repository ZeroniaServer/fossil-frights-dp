function fossil_frights:tasks/tracker/hide
function fossil_frights:tasks/tracker/sync_book_order

function fossil_frights:tasks/tracker/update_title
execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if entity @a[limit=1] run function fossil_frights:tasks/tracker/show

function fossil_frights:tasks/tracker/update_sidebar {task:"bathroom_leak"}
function fossil_frights:tasks/tracker/update_sidebar {task:"check_ankylo"}
function fossil_frights:tasks/tracker/update_sidebar {task:"check_security"}
function fossil_frights:tasks/tracker/update_sidebar {task:"climb_the_tower"}
function fossil_frights:tasks/tracker/update_sidebar {task:"count_shells"}
function fossil_frights:tasks/tracker/update_sidebar {task:"count_toes"}
function fossil_frights:tasks/tracker/update_sidebar {task:"dig_sand"}
function fossil_frights:tasks/tracker/update_sidebar {task:"dive_into_well"}
function fossil_frights:tasks/tracker/update_sidebar {task:"fire_pottery"}
function fossil_frights:tasks/tracker/update_sidebar {task:"fix_cracked_egg"}
function fossil_frights:tasks/tracker/update_sidebar {task:"fix_mars"}
function fossil_frights:tasks/tracker/update_sidebar {task:"lock_register"}
function fossil_frights:tasks/tracker/update_sidebar {task:"make_some_noise"}
function fossil_frights:tasks/tracker/update_sidebar {task:"polish_bell"}
function fossil_frights:tasks/tracker/update_sidebar {task:"reset_fountain"}
function fossil_frights:tasks/tracker/update_sidebar {task:"reset_salt_level"}
function fossil_frights:tasks/tracker/update_sidebar {task:"static_buildup"}
function fossil_frights:tasks/tracker/update_sidebar {task:"swat_flies"}
function fossil_frights:tasks/tracker/update_sidebar {task:"sweep_popcorn"}
function fossil_frights:tasks/tracker/update_sidebar {task:"tnt_test"}
function fossil_frights:tasks/tracker/update_sidebar {task:"toilet_clog"}
function fossil_frights:tasks/tracker/update_sidebar {task:"visit_archean"}
function fossil_frights:tasks/tracker/update_sidebar {task:"visit_jurassic"}
function fossil_frights:tasks/tracker/update_sidebar {task:"visit_neogene"}
function fossil_frights:tasks/tracker/update_sidebar {task:"visit_silurian"}
function fossil_frights:tasks/tracker/update_sidebar {task:"water_temp"}

function fossil_frights:tasks/tracker/update_sidebar {task:"ancient_portal"}
function fossil_frights:tasks/tracker/update_sidebar {task:"bring_brush"}
function fossil_frights:tasks/tracker/update_sidebar {task:"brush_delivery"}
function fossil_frights:tasks/tracker/update_sidebar {task:"chlorinify"}
function fossil_frights:tasks/tracker/update_sidebar {task:"coffee_top_up"}
function fossil_frights:tasks/tracker/update_sidebar {task:"cool_it"}
function fossil_frights:tasks/tracker/update_sidebar {task:"credit_reel"}
function fossil_frights:tasks/tracker/update_sidebar {task:"feed_parrot"}
function fossil_frights:tasks/tracker/update_sidebar {task:"feed_the_fish"}
function fossil_frights:tasks/tracker/update_sidebar {task:"feed_the_plants"}
function fossil_frights:tasks/tracker/update_sidebar {task:"fix_sculker"}
function fossil_frights:tasks/tracker/update_sidebar {task:"heat_it_up"}
function fossil_frights:tasks/tracker/update_sidebar {task:"nautilus_guard"}
function fossil_frights:tasks/tracker/update_sidebar {task:"picnic_with_trike"}
function fossil_frights:tasks/tracker/update_sidebar {task:"popcorn_buckets"}
function fossil_frights:tasks/tracker/update_sidebar {task:"refill_coffee"}
function fossil_frights:tasks/tracker/update_sidebar {task:"refill_ice"}
function fossil_frights:tasks/tracker/update_sidebar {task:"replenish_soap"}
function fossil_frights:tasks/tracker/update_sidebar {task:"restock_plushies"}
function fossil_frights:tasks/tracker/update_sidebar {task:"revitalize_coral"}
function fossil_frights:tasks/tracker/update_sidebar {task:"shark_bait"}
function fossil_frights:tasks/tracker/update_sidebar {task:"smelly_toilet"}
function fossil_frights:tasks/tracker/update_sidebar {task:"sponge_up_spill"}
function fossil_frights:tasks/tracker/update_sidebar {task:"wash_muddy_sherd"}
function fossil_frights:tasks/tracker/update_sidebar {task:"water_crops"}

function fossil_frights:tasks/tracker/update_sidebar {task:"a_c_reset"}
function fossil_frights:tasks/tracker/update_sidebar {task:"basketball_dance"}
function fossil_frights:tasks/tracker/update_sidebar {task:"defrost_freezer"}
function fossil_frights:tasks/tracker/update_sidebar {task:"evolution"}
function fossil_frights:tasks/tracker/update_sidebar {task:"feed_the_bats"}
function fossil_frights:tasks/tracker/update_sidebar {task:"fertilize_plant"}
function fossil_frights:tasks/tracker/update_sidebar {task:"glowberry_trees"}
function fossil_frights:tasks/tracker/update_sidebar {task:"holy_grail"}
function fossil_frights:tasks/tracker/update_sidebar {task:"hoveraptor"}
function fossil_frights:tasks/tracker/update_sidebar {task:"pig_wrangler"}
function fossil_frights:tasks/tracker/update_sidebar {task:"return_the_key"}
function fossil_frights:tasks/tracker/update_sidebar {task:"skincare_routine"}
function fossil_frights:tasks/tracker/update_sidebar {task:"star_gazing"}
function fossil_frights:tasks/tracker/update_sidebar {task:"the_lost_code"}

function fossil_frights:tasks/tracker/update_sidebar {task:"final_task"}

execute if predicate fossil_frights:game_state/game_running run function fossil_frights:locator_bar/markers/sync
