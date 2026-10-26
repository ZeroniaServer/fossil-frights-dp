execute if entity @e[limit=1,type=minecraft:item_display,tag=ff_credits_reel] run particle minecraft:smoke 26.50 78.5 75.0 0.3 0.3 0.05 0 10

kill @e[type=#fossil_frights:display_entities,tag=ff_credits]
scoreboard players reset #credit_reel_animation_time ff_global
