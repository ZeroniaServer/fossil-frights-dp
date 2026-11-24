scoreboard players operation #previous_anvil_outline ff_dummy = #anvil_outline ff_dummy
scoreboard players set #anvil_outline ff_dummy 0
execute unless entity @e[type=minecraft:item_display,tag=ff_anvil.process,limit=1] at @e[type=minecraft:interaction,tag=ff_anvil_click,limit=1] as @a[distance=..6,gamemode=!spectator,predicate=fossil_frights:player/is_playing] if items entity @s weapon.* *[minecraft:custom_data~{ff_anvil_ingredient:{}}] at @s if predicate fossil_frights:player/anvil_looking_at run scoreboard players set #anvil_outline ff_dummy 1
execute if score #anvil_outline ff_dummy matches 1 if score #previous_anvil_outline ff_dummy matches 0 as @e[limit=1,type=minecraft:item_display,tag=ff_anvil_outline] run data modify entity @s view_range set value 1
execute if score #anvil_outline ff_dummy matches 0 if score #previous_anvil_outline ff_dummy matches 1 as @e[limit=1,type=minecraft:item_display,tag=ff_anvil_outline] run data modify entity @s view_range set value 0
