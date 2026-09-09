function fossil_frights:items/heists/trap/common/show_bad_target
scoreboard players set @s ff_trap_invalid 20
tag @s remove ff_trap_place_pending
tag @s add ff_trap_restore_pending
execute if entity @s[tag=ff_heist_guard_coin_actionbar_priority] run return 0
title @s actionbar {"translate":"ff.actionbar.trap.invalid_block","color":"red","italic":false}
