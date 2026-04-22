execute if entity @s[tag=ff_fade_game_start] run function fossil_frights:util/fade/actions/game_start
execute if entity @s[tag=ff_fade_game_end] run function fossil_frights:util/fade/actions/game_end
execute if entity @s[tag=ff_fade_tutorial_enter] run function fossil_frights:util/fade/actions/tutorial_enter
execute if entity @s[tag=ff_fade_tutorial_exit] run function fossil_frights:util/fade/actions/tutorial_exit
execute if entity @s[tag=ff_fade_spectator_enter] run function fossil_frights:util/fade/actions/spectator_enter
execute if entity @s[tag=ff_fade_spectator_exit] run function fossil_frights:util/fade/actions/spectator_exit
execute if entity @s[tag=ff_fade_defeat_room] run function fossil_frights:util/fade/actions/defeat_room
execute if entity @s[tag=ff_fade_sarcophagus] run function fossil_frights:util/fade/actions/sarcophagus

tag @s remove ff_fade_tp_active
scoreboard players set @s ff_fade_tp 0
tag @s remove ff_fade_game_start
tag @s remove ff_fade_game_end
tag @s remove ff_fade_tutorial_enter
tag @s remove ff_fade_tutorial_exit
tag @s remove ff_fade_spectator_enter
tag @s remove ff_fade_spectator_exit
tag @s remove ff_fade_defeat_room
tag @s remove ff_fade_sarcophagus
