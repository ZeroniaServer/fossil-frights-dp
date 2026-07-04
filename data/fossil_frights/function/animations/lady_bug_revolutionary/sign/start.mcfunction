execute as @e[limit=1,type=minecraft:item_display,tag=ff_lady_bug_revolutionary_sign] if entity @s[tag=ff_lady_bug_revolutionary_sign.waving] run return 0
tag @e[limit=1,type=minecraft:item_display,tag=ff_lady_bug_revolutionary_sign] add ff_lady_bug_revolutionary_sign.waving
function fossil_frights:animations/lady_bug_revolutionary/sign/stage_1
