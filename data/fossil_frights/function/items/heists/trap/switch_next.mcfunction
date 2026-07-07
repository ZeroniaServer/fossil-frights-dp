tag @s remove ff_trap_switched
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_selected matches ..0 run function fossil_frights:items/heists/trap/switch/from_glow
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_selected matches 1 run function fossil_frights:items/heists/trap/switch/from_freeze
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_selected matches 2 run function fossil_frights:items/heists/trap/switch/from_antigravity
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_selected matches 3 run function fossil_frights:items/heists/trap/switch/from_jelly
execute unless entity @s[tag=ff_trap_switched] if score @s ff_trap_selected matches 4.. run function fossil_frights:items/heists/trap/switch/from_explosive
tag @s remove ff_trap_switched
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 0.5 1.35
