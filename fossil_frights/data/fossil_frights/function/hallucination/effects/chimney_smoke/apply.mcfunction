execute unless entity @s[predicate=fossil_frights:player/team/guard] run return 0
tag @s add ff_chimney_smoke_active_guard
posteffect remove @s fossil_frights:chimney_smoke/deactivate
posteffect add @s fossil_frights:chimney_smoke/activate
