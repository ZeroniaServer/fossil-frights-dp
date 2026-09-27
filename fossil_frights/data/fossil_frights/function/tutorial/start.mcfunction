scoreboard players set $tutorial_blocked ff_tutorial 0
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_watch_tutorial_while_active
execute if predicate fossil_frights:player/is_playing run scoreboard players set $tutorial_blocked ff_tutorial 1
execute unless score $tutorial_blocked ff_tutorial matches 1 run function fossil_frights:lobby_games/stop_all
execute if score $tutorial_blocked ff_tutorial matches 0 run function fossil_frights:tutorial/start_apply
