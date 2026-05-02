execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute unless score $day_active ff_day matches 1 run function fossil_frights:messages/error/no_day_active
execute unless score $day_active ff_day matches 1 run return 0
dialog show @s {type:"minecraft:multi_action",title:{text:"Set Time",color:"gold"},inputs:[{type:"minecraft:number_range",key:"time",label:{text:"Time",color:"yellow"},start:0,end:6000,step:20,initial:0,width:300}],columns:1,actions:[{label:{text:"Set Time",color:"green"},action:{type:"dynamic/run_command",template:"admin set_time $(time)"}}],exit_action:{label:{text:"Back",color:"white"},action:{type:"run_command",command:"admin show"}}}
