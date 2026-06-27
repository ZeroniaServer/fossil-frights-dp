## called when: saving player inventory
## called by: function nlib:module/database/player/inventory/save
$execute unless data storage nlib:dummy db.inventory[{id:$(id)}] run data modify storage nlib:dummy db.inventory append value {id:$(id)}
$data modify storage nlib:dummy db.inventory[{id:$(id)}] set from storage nlib:dummy dummy
