## called when: saving player equipment
## called by: function nlib:module/database/player/inventory/method/save_inventory

# save armor.feet
data modify storage nlib:dummy dummy.slot.equipment append from entity @s equipment.feet
data modify storage nlib:dummy dummy.slot.equipment[-1].Slot set value 1b
