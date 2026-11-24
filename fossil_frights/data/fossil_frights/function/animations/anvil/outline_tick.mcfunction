scoreboard players set #anvil_outline ff_dummy 0
execute unless entity @e[type=minecraft:item_display,tag=ff_anvil.process,limit=1] positioned 54 80 39 as @a[distance=..6,gamemode=!spectator,predicate=fossil_frights:player/is_playing] if items entity @s weapon.* *[minecraft:custom_data~{ff_anvil_ingredient:{}}] at @s if predicate fossil_frights:player/anvil_looking_at run scoreboard players set #anvil_outline ff_dummy 1
execute if score #anvil_outline ff_dummy matches 1 as @e[type=minecraft:item_display,tag=ff_anvil_outline,nbt={view_range:0f}] run data merge entity @s {view_range:1f}
execute if score #anvil_outline ff_dummy matches 0 as @e[type=minecraft:item_display,tag=ff_anvil_outline,nbt=!{view_range:0f}] run data merge entity @s {view_range:0f}
