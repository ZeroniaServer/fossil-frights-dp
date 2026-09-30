execute unless entity @s[tag=ff_day_tutorial_prompt_open] run return 0
tag @s remove ff_day_tutorial_prompt_open
tag @s remove ff_day_tutorial_prompt_button_latched
tag @s add tutorial_complete
function fossil_frights:game/frights/day/next
