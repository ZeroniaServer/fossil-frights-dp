## called when: saving player data
## called by: function nlib:module/database/player/save

# reconfirm UUID
execute unless data storage nlib:dummy db.UUID run data modify storage nlib:dummy db.UUID set from entity @s UUID

# override database with new data
$data modify storage nlib.database:main player[{UUID:$(UUID)}] set from storage nlib:dummy db
