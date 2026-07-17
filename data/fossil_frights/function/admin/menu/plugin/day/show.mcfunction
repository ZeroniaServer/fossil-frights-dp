execute unless score $game_running ff_game_state matches 1 run function fossil_frights:messages/error/no_game_running
execute unless score $game_running ff_game_state matches 1 run return 0
execute if score $day_active ff_day matches 1 run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.day_set"}]}
execute if score $day_active ff_day matches 1 run return 0
dialog show @s {type:"minecraft:multi_action",title:{text:"Set Day",color:"gold"},inputs:[{type:"minecraft:number_range",key:"day",label:{text:"Day",color:"yellow"},start:1,end:9,step:1,initial:1,width:300}],columns:1,actions:[{label:{text:"Set Day",color:"green"},action:{type:"dynamic/run_command",template:"admin set_day $(day)"}}],exit_action:{label:{text:"Back",color:"white"},action:{type:"run_command",command:"admin show"}}}
