scoreboard players set @s ff_settings_confirm 0
scoreboard players enable @s ff_settings_confirm
$dialog show @s {type:"minecraft:multi_action",title:$(title),body:$(body),columns:1,actions:[{label:{translate:"ff.settings.close",color:"white"},action:{type:"run_command",command:"trigger ff_settings_confirm set 0"}}],exit_action:{label:{translate:"ff.settings.close",color:"white"},action:{type:"run_command",command:"trigger ff_settings_confirm set 0"}}}
