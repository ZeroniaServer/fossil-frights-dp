## called as: server /reload
## called by: function nlib:core/load

# load version data
execute if function nlib:util/data/reload run return fail

## initialize data
function nlib:core/load/initialize/region
function nlib:core/load/initialize/storage
function nlib:core/load/initialize/scoreboard
function nlib:core/load/initialize/setting
