advancement revoke @s only fossil_frights:items/loot_book/consume
tag @s add ff_lootbook_restore_pending
execute unless score $heist_round_active ff_game_state matches 1 run return run function fossil_frights:items/heists/lootbook/show_all_nogame
execute unless entity @s[team=ff_guard,gamemode=!spectator] unless entity @s[team=ff_thief,gamemode=!spectator] run return 0
function fossil_frights:items/heists/lootbook/show_round
