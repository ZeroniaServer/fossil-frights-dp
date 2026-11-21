execute if score @s ff_heist_ui_cooldown matches 1.. run title @s actionbar {"translate":"ff.messages.warning.settings_spam","color":"red"}
execute if score @s ff_heist_ui_cooldown matches 1.. run scoreboard players set @s ff_heist_ui_cooldown 12
execute if score @s ff_heist_ui_cooldown matches 1.. run return 0
scoreboard players set @s ff_heist_ui_cooldown 12
playsound minecraft:block.lever.click master @s ~ ~ ~ 1 1
return 1
