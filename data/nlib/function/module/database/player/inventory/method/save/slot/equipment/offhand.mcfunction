## called when: saving player equipment
## called by: function nlib:module/database/player/inventory/method/save_inventory

# save weapon.offhand
data modify storage nlib:dummy dummy.slot.equipment append from entity @s equipment.offhand
data modify storage nlib:dummy dummy.slot.equipment[-1].Slot set value 0b
