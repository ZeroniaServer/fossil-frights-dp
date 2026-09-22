execute unless score $loot_poster_tube ff_heist_loot_state matches 1 run kill @e[type=minecraft:interaction,tag=ff_heist_loot_poster_tube_click]
execute if score $loot_poster_tube ff_heist_loot_state matches 1 unless entity @e[type=minecraft:interaction,tag=ff_heist_loot_poster_tube_click,limit=1] run function fossil_frights:game/heists/loot/common/spawn/poster_tube
execute if score $loot_poster_tube ff_heist_loot_state matches 0..1 as @e[tag=fh_poster] run data merge entity @s {view_range:1f}
execute if score $loot_poster_tube ff_heist_loot_state matches 0..1 run setblock -21 81 14 pink_stained_glass_pane[east=true,west=true] strict
execute if score $loot_poster_tube ff_heist_loot_state matches 2..3 as @e[tag=fh_poster] run data merge entity @s {view_range:0f}
execute if score $loot_poster_tube ff_heist_loot_state matches 2..3 run setblock -21 81 14 air strict
