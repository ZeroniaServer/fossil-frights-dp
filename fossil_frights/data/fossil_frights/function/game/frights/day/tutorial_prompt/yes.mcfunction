execute unless entity @s[tag=ff_day_tutorial_prompt_open] run return 0
tag @s remove ff_day_tutorial_prompt_open
tag @s remove ff_day_tutorial_prompt_button_latched
execute if predicate fossil_frights:player/is_playing run tag @s add ff_tutorial_return_to_game
tag @s add ff_tutorial_pending
function fossil_frights:game/reset
schedule function fossil_frights:game/frights/day/tutorial_prompt/start_after_reset 20t replace
