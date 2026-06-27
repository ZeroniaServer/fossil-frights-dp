## called when: saving player inventory
## called by: function nlib:module/database/player/inventory/method/save/sort/loop

# remap slot value
execute store result storage nlib:dummy dummy.i[0].Slot byte 1 run scoreboard players remove .slot dummy 9

# append i[0] to slot.inventory
data modify storage nlib:dummy dummy.slot.inventory append from storage nlib:dummy dummy.i[0]

# remove data entry
data remove storage nlib:dummy dummy.i[0]
