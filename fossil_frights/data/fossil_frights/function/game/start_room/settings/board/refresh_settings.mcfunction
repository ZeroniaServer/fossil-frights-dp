# Music
data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_music_off ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 if score $settings_music_off ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_label,limit=1] text set value {translate:"ff.settings.board.music",font:"fossil-frights:small_caps",color:"green"}
execute if score $settings_music_off ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_music_label,limit=1] text set value {translate:"ff.settings.board.music",font:"fossil-frights:small_caps",color:"red"}

# Spectators
data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_spectator_deny ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 if score $settings_spectator_deny ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_label,limit=1] text set value {translate:"ff.settings.board.spectators",font:"fossil-frights:small_caps",color:"green"}
execute if score $settings_spectator_deny ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_spectators_label,limit=1] text set value {translate:"ff.settings.board.spectators",font:"fossil-frights:small_caps",color:"red"}

# Chat
data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_chat_hidden ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_locked ff_game_state matches 0 if score $settings_chat_hidden ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_label,limit=1] text set value {translate:"ff.settings.board.chat",font:"fossil-frights:small_caps",color:"green"}
execute if score $settings_chat_hidden ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_chat_label,limit=1] text set value {translate:"ff.settings.board.chat",font:"fossil-frights:small_caps",color:"red"}

# Speedrun
data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 if score $settings_speedrun_show ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 0 if score $settings_locked ff_game_state matches 0 if score $settings_speedrun_show ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] text set value {translate:"ff.settings.board.speedrun",font:"fossil-frights:small_caps",color:"gray"}
execute if score $settings_mode ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] text set value {translate:"ff.settings.board.speedrun",font:"fossil-frights:small_caps",color:"red"}
execute if score $settings_mode ff_game_state matches 0 if score $settings_speedrun_show ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] text set value {translate:"ff.settings.board.speedrun",font:"fossil-frights:small_caps",color:"green"}

# Randomizer
data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 if score $settings_randomizer_on ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 if score $settings_locked ff_game_state matches 0 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
execute if score $settings_mode ff_game_state matches 2 if score $settings_locked ff_game_state matches 0 if score $settings_randomizer_on ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] text set value [{text:"",font:"fossil-frights:settings_board",color:"white"}]
data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] text set value {translate:"ff.settings.board.random",font:"fossil-frights:small_caps",color:"gray"}
execute if score $settings_mode ff_game_state matches 2 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] text set value {translate:"ff.settings.board.random",font:"fossil-frights:small_caps",color:"red"}
execute if score $settings_mode ff_game_state matches 2 if score $settings_randomizer_on ff_game_state matches 1 run data modify entity @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] text set value {translate:"ff.settings.board.random",font:"fossil-frights:small_caps",color:"green"}

execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_music_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_spectators_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_chat_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_speedrun_label] run data modify entity @s text set value ""
execute if score $settings_locked ff_game_state matches 1 as @e[type=minecraft:text_display,tag=ff_settings_randomizer_label] run data modify entity @s text set value ""
