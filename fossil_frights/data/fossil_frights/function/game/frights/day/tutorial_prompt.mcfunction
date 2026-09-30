tag @s add ff_day_tutorial_prompt_open
tag @s add ff_day_tutorial_prompt_button_latched
scoreboard players set @s ff_tutorial_prompt 0
dialog show @s {type:"minecraft:multi_action",title:{translate:"ff.tutorial.prompt.title",font:"fossil-frights:small_caps",color:"gold"},body:[{type:"minecraft:plain_message",contents:{translate:"ff.tutorial.prompt.body",color:"white"},width:360}],columns:2,after_action:"close",actions:[{label:{translate:"ff.tutorial.prompt.yes",color:"green"},action:{type:"run_command",command:"trigger ff_tutorial_prompt set 1"}},{label:{translate:"ff.tutorial.prompt.no",color:"gray"},action:{type:"run_command",command:"trigger ff_tutorial_prompt set 2"}}]}
