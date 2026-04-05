kill @e[tag=game_over_animation]
scoreboard players set $defeat_anim ff_game_state 0
schedule clear fossil_frights:animations/defeat/everytick
schedule clear fossil_frights:animations/defeat/say_hey
schedule clear fossil_frights:animations/defeat/title_fired
schedule clear fossil_frights:animations/defeat/finish
