## called when: saving player hotbar and inventory
## called by: function nlib:module/database/player/inventory/method/save_inventory
## called by: function nlib:module/database/player/inventory/method/save/sort/loop

# sort dummy.i[0] to correct container category
execute store result score .slot dummy run data get storage nlib:dummy dummy.i[0].Slot
execute if score .slot dummy matches 0..8 run function nlib:module/database/player/inventory/method/save/sort/category/hotbar
execute if score .slot dummy matches 9..35 run function nlib:module/database/player/inventory/method/save/sort/category/inventory

# loop until empty
execute if data storage nlib:dummy dummy.i[0] run return run function nlib:module/database/player/inventory/method/save/sort/loop
data remove storage nlib:dummy dummy.i
