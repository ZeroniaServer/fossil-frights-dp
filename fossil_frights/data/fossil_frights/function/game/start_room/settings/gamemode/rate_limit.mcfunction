scoreboard players add @s ff_settings_mode_changes 0
scoreboard players add @s ff_settings_mode_cooldown 0
execute if score @s ff_settings_mode_cooldown matches 1.. run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.settings_spam"}]}
execute if score @s ff_settings_mode_cooldown matches 1.. run scoreboard players set @s ff_settings_mode_cooldown 20
execute if score @s ff_settings_mode_cooldown matches 1.. run return 0
execute if score @s ff_settings_mode_changes matches 3.. run tellraw @s {"translate":"ff.messages.warning","color":"red","with":[{"translate":"ff.messages.warning.settings_spam"}]}
execute if score @s ff_settings_mode_changes matches 3.. run scoreboard players set @s ff_settings_mode_cooldown 20
execute if score @s ff_settings_mode_changes matches 3.. run return 0
scoreboard players add @s ff_settings_mode_changes 1
return 1
