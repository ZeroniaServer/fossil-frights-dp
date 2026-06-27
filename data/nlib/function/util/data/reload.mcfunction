##		USAGE DOCUMENTATION
##------------------------------
#	
#	First create a version function utilizing nlib:util/data/version
#	1. In your reload function, call your version function
#	2. In your reload function, call this function
#	   (Can be used in an if statement, passing if the version hasn't changed)
#	
#	Example:
#	/function nlib:core/version
#	/execute if function nlib:util/data/reload run return fail
#	
##------------------------------
# compare version
scoreboard objectives add nlib.test dummy
execute if data storage nlib:dummy version_old.data store result score .new nlib.test run data get storage nlib:dummy version.data
execute if data storage nlib:dummy version_old.data store result score .old nlib.test run data get storage nlib:dummy version_old.data
execute if data storage nlib:dummy version_old.data if score .new nlib.test = .old nlib.test run return run function nlib:util/data/reload_reset

# confirm load
execute if score .new nlib.test > .old nlib.test run tellraw @a[advancements={nlib:flag/hide_chat={reload=false}}] {translate:'nlib.chat.console', fallback:'[Console] %s', with:[{translate:'nlib.chat.initialize', fallback:'%s initialized: %s', color:gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.name', interpret:true}], {translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.series', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.data', plain:true}]]}], hover_event:{action:'show_text', value:[{translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:gray},{storage:'nlib:dummy', nbt:'version_old.series', interpret:true}], [{text:'', color:gray},{storage:'nlib:dummy', nbt:'version_old.id', interpret:true}], [{text:'', color:gray},{storage:'nlib:dummy', nbt:'version_old.data', plain:true}]]}, ' ', {translate:'nlib.arrow.right', fallback:'->', color:green}, ' ', {translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.series', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.data', plain:true}]]}]}}]}
execute if score .new nlib.test < .old nlib.test run tellraw @a[advancements={nlib:flag/hide_chat={reload=false}}] {translate:'nlib.chat.console', fallback:'[Console] %s', with:[{translate:'nlib.chat.initialize', fallback:'%s initialized: %s', color:gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.name', interpret:true}], {translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.series', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.data', plain:true}]]}], hover_event:{action:'show_text', value:[{translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:gray},{storage:'nlib:dummy', nbt:'version_old.series', interpret:true}], [{text:'', color:gray},{storage:'nlib:dummy', nbt:'version_old.id', interpret:true}], [{text:'', color:gray},{storage:'nlib:dummy', nbt:'version_old.data', plain:true}]]}, ' ', {translate:'nlib.arrow.right', fallback:'->', color:red}, ' ', {translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.series', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.data', plain:true}]]}]}}]}
execute unless data storage nlib:dummy version_old.data run tellraw @a[advancements={nlib:flag/hide_chat={reload=false}}] {translate:'nlib.chat.console', fallback:'[Console] %s', with:[{translate:'nlib.chat.initialize', fallback:'%s initialized: %s', color:gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.name', interpret:true}], {translate:'nlib.technical.version.box', fallback:'[%s | %s | %s]', color:dark_gray, with:[[{text:'', color:green},{storage:'nlib:dummy', nbt:'version.series', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{text:'', color:green},{storage:'nlib:dummy', nbt:'version.data', plain:true}]]}]}]}
function nlib:util/data/reload_reset
return fail
