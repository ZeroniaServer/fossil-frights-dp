# version
data remove storage nlib:dummy version
data modify storage nlib:dummy version_old set from storage nlib:data version
data modify storage nlib:dummy version merge value {id: "a1.0.0-12"}
data modify storage nlib:dummy version merge value {data: 12}
data modify storage nlib:dummy version merge value {date: "June 27th 2026"}
data modify storage nlib:dummy version merge value {name: {translate:'nlib', fallback:'nlib'}}
data modify storage nlib:dummy version merge value {desc: "night's library"}
data modify storage nlib:dummy version merge value {series: "custom"}
#data modify storage nlib:dummy version.resource_pack merge value {id: {translate:'nlib.technical.version', fallback:'§c❌§r'}}
#data modify storage nlib:dummy version.resource_pack merge value {date: {translate:'nlib.technical.version.date', fallback:'§c❌§r'}}
data modify storage nlib:data version merge from storage nlib:dummy version

# /trigger version
function nlib:util/data/version {url:'https://github.com/nightlibra/nlib'}
