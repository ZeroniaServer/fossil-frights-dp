##		USAGE DOCUMENTATION
##------------------------------
#	
#	1. Specify the following information in the storage nlib:dummy
#		- version.id
#		- version.data
#		- version.date
#		- version.name
#		- version.desc
#		- version.series
#		- version.resource_pack.id (optional)
#		- version.resource_pack.date (optional)
#	2. Call this function with a url parameter.
#	3. Add your implementation to the function tag #nlib:core/version
#	
#	Example:
#	/data modify storage nlib:dummy version set value {id:'1.0', data:0, date:'Jan 1st 2000', name:'My Project', desc:'Short description', series:'main'}
#	/function nlib:util/data/version {url:'https://github.com/'}
#	
##------------------------------
execute unless entity @s[type=minecraft:player] run return fail

# name [{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]
$tellraw @s {storage:'nlib:dummy', nbt:'version.name', interpret:true, hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]]}, click_event:{action:'open_url', url:'$(url)'}}

# datapack
$tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.series', fallback:'series', color:gray}], [{text:'',color:green}, {storage:'nlib:dummy', nbt:'version.series', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]]}, click_event:{action:'open_url', url:'$(url)'}}
$tellraw @s {translate:'nlib.technical.version.pipe', fallback:'• %s = %s | %s', color:dark_gray, with:[[{translate:'nlib.version.id', fallback:'version', color:gray}], [{text:'',color:green}, {storage:'nlib:dummy', nbt:'version.id', interpret:true}], [{storage:'nlib:dummy', nbt:'version.data', color:gray, plain:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]]}, click_event:{action:'open_url', url:'$(url)'}}
$tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.date', fallback:'date', color:gray}], [{text:'',color:white}, {storage:'nlib:dummy', nbt:'version.date', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]]}, click_event:{action:'open_url', url:'$(url)'}}

# resource pack
$execute if data storage nlib:dummy version.resource_pack run tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.resource_pack.id', fallback:'resource version', color:gray}], [{text:'',color:green}, {storage:'nlib:dummy', nbt:'version.resource_pack.id', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]]}, click_event:{action:'open_url', url:'$(url)'}}
$execute if data storage nlib:dummy version.resource_pack run tellraw @s {translate:'nlib.technical.version.line', fallback:'• %s = %s', color:dark_gray, with:[[{translate:'nlib.version.resource_pack.date', fallback:'resource date', color:gray}], [{text:'',color:white}, {storage:'nlib:dummy', nbt:'version.resource_pack.date', interpret:true}]], hover_event:{action:'show_text', value:[[{storage:'nlib:dummy', nbt:'version.desc', interpret:true}, '\n', {color:gray, text:'$(url)'}]]}, click_event:{action:'open_url', url:'$(url)'}}

# clean up
tellraw @s ''
