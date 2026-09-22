execute if predicate fossil_frights:world/packs_enabled/plugin run tellraw @s [{"text":"Fossil Frights plugin is managing stats. Use /admin leaderboard remove <player> or edit leaderboard.yml, then /admin leaderboard reload.","color":"red"}]
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
$function fossil_frights:admin/reset_stats_name_macro {name:"$(name)"}
