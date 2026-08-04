# Music
data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_label,limit=1] text set value {translate:"ff.settings.board.music",color:"green"}
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_label,limit=1] text set value {translate:"ff.settings.board.music",color:"red"}

# Spectators
data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_label,limit=1] text set value {translate:"ff.settings.board.spectators",color:"green"}
execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_label,limit=1] text set value {translate:"ff.settings.board.spectators",color:"red"}

# Chat
data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_label,limit=1] text set value {translate:"ff.settings.board.chat",color:"green"}
execute if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_label,limit=1] text set value {translate:"ff.settings.board.chat",color:"red"}

# Speedrun
data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 if score $settings_locked ff_game_state matches 0 if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] text set value {translate:"ff.settings.board.speedrun",color:"gray"}
execute if score $settings_mode ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] text set value {translate:"ff.settings.board.speedrun",color:"red"}
execute if score $settings_mode ff_game_state matches 0 if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] text set value {translate:"ff.settings.board.speedrun",color:"green"}

# Randomizer
data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 if entity @a[tag=ff_settings_randomizer_on,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 if score $settings_locked ff_game_state matches 0 if entity @a[tag=ff_settings_randomizer_on,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] text set value {translate:"ff.settings.board.random",color:"gray"}
execute if score $settings_mode ff_game_state matches 2 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] text set value {translate:"ff.settings.board.random",color:"red"}
execute if score $settings_mode ff_game_state matches 2 if entity @a[tag=ff_settings_randomizer_on,limit=1] run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] text set value {translate:"ff.settings.board.random",color:"green"}

execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_music_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_spectators_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_chat_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_speedrun_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_randomizer_label] run data modify entity @s text set value ""
