## called as: server /reload
## called by: function #minecraft:load

# library status
execute if score $nlib nlib.setting matches 0 run return fail

# load initialize data
function nlib:core/version
function nlib:core/load/root

# load cache data
data remove storage nlib:data cache
function #nlib:core/load/cache

# load tests
scoreboard objectives add nlib.test dummy
function #nlib:core/load/test/start
function #nlib:core/load/test/result

# reset
scoreboard objectives remove nlib.test
scoreboard players reset * dummy
