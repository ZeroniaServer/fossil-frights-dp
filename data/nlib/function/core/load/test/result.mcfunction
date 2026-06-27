## called as: server /reload
## called by: function nlib:core/load via #nlib:core/load/test/result
execute unless score .root nlib.test matches 1 run function nlib:util/debug/error/reload {code:1000, url:'https://github.com/nightlibra/nlib'}
execute if score .shulker_box nlib.test matches 1 run function nlib:util/debug/error/reload {code:1001, url:'https://github.com/nightlibra/nlib'}
execute unless score .shulker_box nlib.test matches 0.. run function nlib:util/debug/error/reload {code:2001, url:'https://github.com/nightlibra/nlib'}
