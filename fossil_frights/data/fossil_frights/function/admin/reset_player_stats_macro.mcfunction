execute if predicate fossil_frights:world/packs_enabled/plugin run tellraw @s [{"text":"Fossil Frights plugin is managing stats. Use /admin leaderboard remove <player> or edit leaderboard.yml, then /admin leaderboard reload.","color":"red"}]
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0

$execute unless entity $(name) run tellraw @s {text:"$(name) is not online.","color":"red"}
$execute unless entity $(name) run return 0

$execute as $(name) run function fossil_frights:player/util/write_username {to:"storage fossil_frights:admin reset_stats_name_macro_args.name"}
function fossil_frights:admin/reset_stats_name_macro with storage fossil_frights:admin reset_stats_name_macro_args
data remove storage fossil_frights:admin reset_stats_name_macro_args
