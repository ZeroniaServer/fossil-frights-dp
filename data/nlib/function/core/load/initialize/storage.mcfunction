## load storage data

# library installation timestamps
execute store result storage nlib:data version.timestamp.latest long 1 run time query gametime
execute unless data storage nlib:data version.timestamp.install store result storage nlib:data version.timestamp.install long 1 run time query gametime
