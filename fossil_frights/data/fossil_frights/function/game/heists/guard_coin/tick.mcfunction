execute if score $heist_guard_coin_pending ff_heist matches 1 if score $heist_guard_coin_delay ff_heist matches 1.. run scoreboard players remove $heist_guard_coin_delay ff_heist 1
execute if score $heist_guard_coin_pending ff_heist matches 1 if score $heist_guard_coin_delay ff_heist matches ..0 run function fossil_frights:game/heists/guard_coin/spawn
execute if score $heist_guard_coin_stage ff_heist matches 0 if score $heist_elapsed ff_heist matches 3600.. if score $heist_loot ff_heist matches 500.. run function fossil_frights:game/heists/guard_coin/prepare
execute if score $heist_guard_coin_stage ff_heist matches 0 if score $heist_elapsed ff_heist matches 3600.. run scoreboard players set $heist_guard_coin_stage ff_heist 1
execute if score $heist_guard_coin_stage ff_heist matches 1 if score $heist_elapsed ff_heist matches 6000.. if score $heist_loot ff_heist matches 600.. run function fossil_frights:game/heists/guard_coin/prepare
execute if score $heist_guard_coin_stage ff_heist matches 1 if score $heist_elapsed ff_heist matches 6000.. run scoreboard players set $heist_guard_coin_stage ff_heist 2
execute if score $heist_guard_coin_stage ff_heist matches 2 if score $heist_elapsed ff_heist matches 8400.. if score $heist_loot ff_heist matches 700.. run function fossil_frights:game/heists/guard_coin/prepare
execute if score $heist_guard_coin_stage ff_heist matches 2 if score $heist_elapsed ff_heist matches 8400.. run scoreboard players set $heist_guard_coin_stage ff_heist 3
execute if score $heist_guard_coin_stage ff_heist matches 3 if score $heist_elapsed ff_heist matches 10800.. if score $heist_loot ff_heist matches 900.. run function fossil_frights:game/heists/guard_coin/prepare
execute if score $heist_guard_coin_stage ff_heist matches 3 if score $heist_elapsed ff_heist matches 10800.. run scoreboard players set $heist_guard_coin_stage ff_heist 4
