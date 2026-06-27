## called as: server /reload
## called by: function nlib:core/load via #nlib:core/load/cache

## load error code cache
data modify storage nlib:data cache.error append value {code:1000, translate:'nlib.error.1000', with:['#nlib:core/load/test/start']}
data modify storage nlib:data cache.error append value {code:1001, translate:'nlib.error.1001', with:[{translate:'nlib'}, 'minecraft:blocks/shulker_box']}
data modify storage nlib:data cache.error append value {code:2001, translate:'argument.resource_or_id.no_such_element', with:['minecraft:blocks/shulker_box', 'minecraft:loot_table']}
