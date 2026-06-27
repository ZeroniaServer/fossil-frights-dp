## called when: saving player special slots
## called by: function nlib:module/database/player/inventory/method/save_inventory

# save player.crafting.1
item replace entity @s contents from entity @p[tag=THIS_PLAYER_] player.crafting.1
data modify storage nlib:dummy dummy.slot.special append from entity @s item
data modify storage nlib:dummy dummy.slot.special[-1].Slot set value 2b
kill @s
