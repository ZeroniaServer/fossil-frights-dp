## called when: saving player hotbar
## called by: function nlib:module/database/player/inventory/method/save/sort/loop

# append i[0] to slot.hotbar
data modify storage nlib:dummy dummy.slot.hotbar append from storage nlib:dummy dummy.i[0]

# remove data entry
data remove storage nlib:dummy dummy.i[0]
