# Sidebar Fade
$execute if score @s ff_heist_loot_security_progress matches 1..10 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FFEBEB"}
$execute if score @s ff_heist_loot_security_progress matches 11..20 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FFD6D6"}
$execute if score @s ff_heist_loot_security_progress matches 21..30 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FFC2C2"}
$execute if score @s ff_heist_loot_security_progress matches 31..40 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FFADAD"}
$execute if score @s ff_heist_loot_security_progress matches 41..50 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FF9999"}
$execute if score @s ff_heist_loot_security_progress matches 51..60 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FF8585"}
$execute if score @s ff_heist_loot_security_progress matches 61..70 run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FF7070"}
$execute if score @s ff_heist_loot_security_progress matches 71.. run function fossil_frights:game/heists/loot/secure_loot/render_sidebar_heavy_timed/apply {lootId:"$(lootId)",color:"#FF5555"}
