scoreboard players set @a ff_actionbar_manager.result 0

scoreboard players reset @a[scores={ff_actionbar_manager.slot.camera_navigation=..0}] ff_actionbar_manager.slot.camera_navigation
execute as @a[scores={ff_actionbar_manager.slot.camera_navigation=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.camera_navigation"}}]
execute as @a[scores={ff_actionbar_manager.slot.camera_navigation=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.camera_navigation"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.camera_navigation=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.camera_navigation=1..}] ff_actionbar_manager.slot.camera_navigation 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.camera_thief_visible=..0}] ff_actionbar_manager.slot.camera_thief_visible
execute as @a[scores={ff_actionbar_manager.slot.camera_thief_visible=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.camera_thief_visible"}}]
execute as @a[scores={ff_actionbar_manager.slot.camera_thief_visible=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.camera_thief_visible"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.camera_thief_visible=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.camera_thief_visible=1..}] ff_actionbar_manager.slot.camera_thief_visible 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.held_item_info=..0}] ff_actionbar_manager.slot.held_item_info
execute as @a[scores={ff_actionbar_manager.slot.held_item_info=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.held_item_info"}}]
execute as @a[scores={ff_actionbar_manager.slot.held_item_info=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.held_item_info"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.held_item_info=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.held_item_info=1..}] ff_actionbar_manager.slot.held_item_info 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.invisipunch_cooldown=..0}] ff_actionbar_manager.slot.invisipunch_cooldown
execute as @a[scores={ff_actionbar_manager.slot.invisipunch_cooldown=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.invisipunch_cooldown"}}]
execute as @a[scores={ff_actionbar_manager.slot.invisipunch_cooldown=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.invisipunch_cooldown"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.invisipunch_cooldown=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.invisipunch_cooldown=1..}] ff_actionbar_manager.slot.invisipunch_cooldown 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.ladybug_timer=..0}] ff_actionbar_manager.slot.ladybug_timer
execute as @a[scores={ff_actionbar_manager.slot.ladybug_timer=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.ladybug_timer"}}]
execute as @a[scores={ff_actionbar_manager.slot.ladybug_timer=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.ladybug_timer"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.ladybug_timer=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.ladybug_timer=1..}] ff_actionbar_manager.slot.ladybug_timer 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.evolution_task_info=..0}] ff_actionbar_manager.slot.evolution_task_info
execute as @a[scores={ff_actionbar_manager.slot.evolution_task_info=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.evolution_task_info"}}]
execute as @a[scores={ff_actionbar_manager.slot.evolution_task_info=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.evolution_task_info"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.evolution_task_info=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.evolution_task_info=1..}] ff_actionbar_manager.slot.evolution_task_info 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.a_c_vents_task_info=..0}] ff_actionbar_manager.slot.a_c_vents_task_info
execute as @a[scores={ff_actionbar_manager.slot.a_c_vents_task_info=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.a_c_vents_task_info"}}]
execute as @a[scores={ff_actionbar_manager.slot.a_c_vents_task_info=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.a_c_vents_task_info"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.a_c_vents_task_info=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.a_c_vents_task_info=1..}] ff_actionbar_manager.slot.a_c_vents_task_info 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.lobby_game=..0}] ff_actionbar_manager.slot.lobby_game
execute as @a[scores={ff_actionbar_manager.slot.lobby_game=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.lobby_game"}}]
execute as @a[scores={ff_actionbar_manager.slot.lobby_game=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.lobby_game"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.lobby_game=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.lobby_game=1..}] ff_actionbar_manager.slot.lobby_game 1
scoreboard players reset @a[scores={ff_actionbar_manager.slot.scissors_run_warning=..0}] ff_actionbar_manager.slot.scissors_run_warning
execute as @a[scores={ff_actionbar_manager.slot.scissors_run_warning=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.scissors_run_warning"}}]
execute as @a[scores={ff_actionbar_manager.slot.scissors_run_warning=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.scissors_run_warning"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.scissors_run_warning=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.scissors_run_warning=1..}] ff_actionbar_manager.slot.scissors_run_warning 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.loot_securing=..0}] ff_actionbar_manager.slot.loot_securing
execute as @a[scores={ff_actionbar_manager.slot.loot_securing=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.loot_securing"}}]
execute as @a[scores={ff_actionbar_manager.slot.loot_securing=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.loot_securing"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.loot_securing=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.loot_securing=1..}] ff_actionbar_manager.slot.loot_securing 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.scissors_found=..0}] ff_actionbar_manager.slot.scissors_found
execute as @a[scores={ff_actionbar_manager.slot.scissors_found=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.scissors_found"}}]
execute as @a[scores={ff_actionbar_manager.slot.scissors_found=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.scissors_found"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.scissors_found=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.scissors_found=1..}] ff_actionbar_manager.slot.scissors_found 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.guard_coin_found=..0}] ff_actionbar_manager.slot.guard_coin_found
execute as @a[scores={ff_actionbar_manager.slot.guard_coin_found=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.guard_coin_found"}}]
execute as @a[scores={ff_actionbar_manager.slot.guard_coin_found=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.guard_coin_found"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.guard_coin_found=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.guard_coin_found=1..}] ff_actionbar_manager.slot.guard_coin_found 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.thief_spotted=..0}] ff_actionbar_manager.slot.thief_spotted
execute as @a[scores={ff_actionbar_manager.slot.thief_spotted=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.thief_spotted"}}]
execute as @a[scores={ff_actionbar_manager.slot.thief_spotted=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.thief_spotted"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.thief_spotted=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.thief_spotted=1..}] ff_actionbar_manager.slot.thief_spotted 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.hovered_info=..0}] ff_actionbar_manager.slot.hovered_info
execute as @a[scores={ff_actionbar_manager.slot.hovered_info=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.hovered_info"}}]
execute as @a[scores={ff_actionbar_manager.slot.hovered_info=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.hovered_info"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.hovered_info=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.hovered_info=1..}] ff_actionbar_manager.slot.hovered_info 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.key_cooldown=..0}] ff_actionbar_manager.slot.key_cooldown
execute as @a[scores={ff_actionbar_manager.slot.key_cooldown=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.key_cooldown"}}]
execute as @a[scores={ff_actionbar_manager.slot.key_cooldown=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.key_cooldown"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.key_cooldown=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.key_cooldown=1..}] ff_actionbar_manager.slot.key_cooldown 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.generic=..0}] ff_actionbar_manager.slot.generic
execute as @a[scores={ff_actionbar_manager.slot.generic=1..}] if score @s ff_actionbar_manager.result matches 1.. run scoreboard players display numberformat @s ff_actionbar_manager.result fixed [{score:{name:"@s",objective:"ff_actionbar_manager.result"}},"   ",{score:{name:"@s",objective:"ff_actionbar_manager.slot.generic"}}]
execute as @a[scores={ff_actionbar_manager.slot.generic=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.generic"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.generic=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.generic=1..}] ff_actionbar_manager.slot.generic 1

scoreboard players reset @a[scores={ff_actionbar_manager.slot.fallback_instruction=..0}] ff_actionbar_manager.slot.fallback_instruction
execute as @a[scores={ff_actionbar_manager.slot.fallback_instruction=1..}] if score @s ff_actionbar_manager.result matches 0 run scoreboard players display numberformat @s ff_actionbar_manager.result fixed ["",{score:{name:"@s",objective:"ff_actionbar_manager.slot.fallback_instruction"}}]
scoreboard players add @a[scores={ff_actionbar_manager.slot.fallback_instruction=1..}] ff_actionbar_manager.result 1
scoreboard players remove @a[scores={ff_actionbar_manager.slot.fallback_instruction=1..}] ff_actionbar_manager.slot.fallback_instruction 1

tag @a[scores={ff_actionbar_manager.result=0}] remove ff_actionbar.fading_out
execute as @a[tag=ff_actionbar.fading_out,scores={ff_actionbar_manager.result=1}] unless score @s ff_actionbar_manager.slot.generic matches 0..63 run tag @s remove ff_actionbar.fading_out
tag @a[scores={ff_actionbar_manager.result=2..}] remove ff_actionbar.fading_out
tag @a[scores={ff_actionbar_manager.result=1,ff_actionbar_manager.slot.generic=63}] add ff_actionbar.fading_out
title @a[tag=!ff_actionbar.fading_out] actionbar {score:{name:"*",objective:"ff_actionbar_manager.result"}}
execute if entity @a[limit=1,scores={ff_actionbar_manager.result=1..}] run schedule function fossil_frights:player/actionbar/manager 1t append 
scoreboard players reset @a ff_actionbar_manager.result
