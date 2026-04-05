function fossil_frights:animations/defeat/stop
scoreboard players set $defeat_anim ff_game_state 1
tp @a[tag=ff_active] -33 81 76 0 0
function fossil_frights:animations/defeat/apply_random_skin
function fossil_frights:animations/defeat/everytick
schedule function fossil_frights:animations/defeat/say_hey 1s
schedule function fossil_frights:animations/defeat/title_fired 4s
schedule function fossil_frights:animations/defeat/finish 5s
