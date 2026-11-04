execute if predicate fossil_frights:world/packs_enabled/plugin run function fossil_frights:admin/menu/plugin/task/show
execute if predicate fossil_frights:world/packs_enabled/plugin run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:messages/error/no_game_running
execute unless predicate fossil_frights:game_state/game_running run return 0
dialog show @s {type:"minecraft:multi_action",title:{text:"Add Task",color:"gold"},pause:false,after_action:"none",columns:1,actions:[{label:{translate:"ff.task.decorate_tree",color:"red"},action:{type:"run_command",command:"function fossil_frights:admin/menu/task/hard/decorate_tree"}}],exit_action:{label:{text:"Back",color:"white"},action:{type:"run_command",command:"function fossil_frights:admin/menu/show"}}}
