execute if score $present ff_plugin matches 1 run tellraw @s [{"text":"Fossil Frights plugin is managing stats. Use /admin leaderboard remove <player> or edit leaderboard.yml, then /admin leaderboard reload.","color":"red"}]
execute if score $present ff_plugin matches 1 run return 0
$function fossil_frights:admin/reset_stats_name_macro {name:"$(name)"}
