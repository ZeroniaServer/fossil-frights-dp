execute store result score #minutes ff_dummy run scoreboard players get @s ff_rejoin_minutes
execute store result score #tens ff_dummy run scoreboard players get @s ff_rejoin_sec_tens
execute store result score #ones ff_dummy run scoreboard players get @s ff_rejoin_sec_ones
function fossil_frights:entity/match/active
execute at @e[limit=1,type=minecraft:mannequin,tag=ff_rejoin_ghost,predicate=fossil_frights:entity/match/active] run tp @e[limit=1,type=minecraft:text_display,tag=ff_rejoin_display,predicate=fossil_frights:entity/match/active] ~ ~2.4 ~
data modify entity @e[type=minecraft:text_display,tag=ff_rejoin_display,predicate=fossil_frights:entity/match/active,limit=1] text set value {translate:"ff.rejoin.countdown",font:"fossil_frights:small_caps",color:"gray",with:[[{score:{name:"#minutes",objective:"ff_dummy"}},":",{score:{name:"#tens",objective:"ff_dummy"}},{score:{name:"#ones",objective:"ff_dummy"}}]]}
