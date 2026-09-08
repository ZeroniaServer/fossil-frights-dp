tag @s add ff_heist_loot_security_active
scoreboard players set @s ff_heist_loot_security_phase 4
scoreboard players set @s ff_heist_loot_security_ticks 0
scoreboard players set @s ff_heist_loot_security_hold 8
scoreboard players set @s ff_heist_loot_security_ui -1
function fossil_frights:game/heists/loot/secure_loot/play_unsecuring
function fossil_frights:game/heists/loot/secure_loot/ui/show
title @s title {"text":" "}
