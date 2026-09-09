execute if entity @s[tag=ff_heist_guard_coin_actionbar_priority] run return 0
title @s actionbar {"translate":"ff.actionbar.heists.loot_security.recently_secured","color":"red","italic":false}
scoreboard players set @s ff_heist_loot_security_actionbar 20
