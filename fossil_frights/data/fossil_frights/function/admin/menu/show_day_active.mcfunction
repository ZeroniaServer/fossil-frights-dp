execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:admin/menu/plugin/show_day_active
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
execute if score $custom_day_active ff_day matches 1 run function fossil_frights:admin/menu/show_custom_day_active
execute if score $custom_day_active ff_day matches 1 run return 0
execute store result storage fossil_frights:admin day int 1 run scoreboard players get $day_current ff_day
function fossil_frights:admin/menu/show_day_active_macro with storage fossil_frights:admin
