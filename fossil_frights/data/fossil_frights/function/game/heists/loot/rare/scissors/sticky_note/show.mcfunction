execute as @e[tag=fh_sticky_note] run data merge entity @s {view_range:1f}
execute as @e[tag=fh_sticky_note_text] run data merge entity @s {view_range:1f}
execute as @e[type=minecraft:item_display,tag=fh_scissors,tag=ff_heist_scissors_active,limit=1] run function fossil_frights:game/heists/loot/rare/scissors/sticky_note/set_text
