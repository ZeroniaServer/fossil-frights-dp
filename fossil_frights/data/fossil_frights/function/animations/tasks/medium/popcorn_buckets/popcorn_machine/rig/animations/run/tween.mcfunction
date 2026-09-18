execute unless entity @s[type=minecraft:item_display,tag=animation.popcorn_machine.root] run return run tellraw @a [{text:'',color:red},[{color:gray,text:'\n '},{color:'#00aced',text:'ᴀɴɪᴍᴀᴛᴇᴅ ᴊᴀᴠᴀ'},{color:dark_gray,italic:true,text:'\n (fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig)'},'\n → '],'ᴇʀʀᴏʀ: ',{text:'Function Not Executed as Root Entity',underlined:true},'\n\n ',{text:'[This Function]',color:yellow,hover_event:{action:show_text,value:[{color:yellow,text:'fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/tween'}]}}," must be executed as the rig's root entity.",{text:'\n\n ≡ ',color:white,extra:[{text:'ꜱʜᴏᴡ ᴇxᴀᴍᴘʟᴇ ᴄᴏᴍᴍᴀɴᴅ',color:aqua,underlined:true,click_event:{action:suggest_command,command:'/execute as @e[tag=animation.popcorn_machine.root] run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/tween'}}]},['\n\n ',{italic:true,underlined:true,color:blue,text:'▶ Learn More ◀',click_event:{action:open_url,url:'https://animated-java.dev/docs/core-concepts/tags#practical-selector-examples'}}],'\n']
execute store result storage fossil_frights:vending_machine_aj_temp args.id int 1 run scoreboard players get @s aj.id
function fossil_frights:animations/dinocoin/vending_machine/runtime/data_manager/read with storage fossil_frights:vending_machine_aj_temp args
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/pause_all
tag @s add animation.popcorn_machine.animation.run.playing
$scoreboard players set @s aj.tween_duration $(duration)
$scoreboard players set @s aj.run.frame $(to_frame)
scoreboard players operation #this aj.i = @s aj.tween_duration
tag @s add aj.transforms_only
execute at @s run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/zzz/apply_frame {frame: 0}
$execute at @s run function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/rig/animations/run/zzz/apply_frame {frame: $(to_frame)}
tag @s remove aj.transforms_only
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get #this aj.i