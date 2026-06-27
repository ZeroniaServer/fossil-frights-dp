## called when: loading player inventory
## called by: function nlib:module/database/player/inventory/load
$data modify storage nlib:dummy dummy set from storage nlib:dummy db.inventory[{id:$(id)}]
