## called when: loading player data
## called by: function nlib:module/database/player/load

# initialize database entry
$execute unless data storage nlib.database:main player[{UUID:$(UUID)}] run data modify storage nlib.database:main player append value {UUID:$(UUID)}

# get the specified data from the database
$data modify storage nlib:dummy db set from storage nlib.database:main player[{UUID:$(UUID)}]
