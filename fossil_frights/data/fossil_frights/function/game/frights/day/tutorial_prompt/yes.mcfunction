tag @s remove ff_day_tutorial_prompt_open
tag @s add ff_tutorial_pending
function fossil_frights:game/reset
schedule function fossil_frights:game/frights/day/tutorial_prompt/start_after_reset 20t replace
