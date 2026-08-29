scoreboard players operation $heist_lady_bug_drop_timer ff_bat_bug_timer = @s ff_bat_bug_timer
scoreboard players operation $heist_lady_bug_drop_age ff_constant = $heist_lady_bug_despawn_age ff_constant
scoreboard players operation $heist_lady_bug_drop_age ff_constant -= $heist_lady_bug_drop_timer ff_bat_bug_timer
execute at @s as @e[type=minecraft:item,distance=..3,sort=nearest,limit=1] if items entity @s contents *[custom_data~{itemID:"lady_bug"}] run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/drop_item
function fossil_frights:game/heists/loot/rare/pickup/lady_bug/clear
