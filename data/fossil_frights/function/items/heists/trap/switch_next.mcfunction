scoreboard players add @s ff_trap_selected 1
execute if score @s ff_trap_selected matches 5.. run scoreboard players set @s ff_trap_selected 0
function fossil_frights:items/heists/trap/restore_selected_mainhand
playsound minecraft:item.bundle.insert player @s ~ ~ ~ 0.5 1.35
