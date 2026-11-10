execute unless entity @a[predicate=fossil_frights:player/team/guard,limit=1] run return 0

function fossil_frights:util/text/list_players {selector:"@a[predicate=fossil_frights:player/team/guard]"}
execute if score #list_players_amount ff_dummy matches 0 run tellraw @a {translate:"ff.messages.announcement",color:"gold",with:[{translate:"ff.survived_to_day.none",with:[{storage:"fossil_frights:text",nbt:"list_players",interpret:true,color:"gold"},{score:{name:"$day_result",objective:"ff_day"},color:"white"}]}]}
execute if score #list_players_amount ff_dummy matches 1 run tellraw @a {translate:"ff.messages.announcement",color:"gold",with:[{translate:"ff.survived_to_day.singular",with:[{storage:"fossil_frights:text",nbt:"list_players",interpret:true,color:"gold"},{score:{name:"$day_result",objective:"ff_day"},color:"white"}]}]}
execute if score #list_players_amount ff_dummy matches 2.. run tellraw @a {translate:"ff.messages.announcement",color:"gold",with:[{translate:"ff.survived_to_day.plural",with:[{storage:"fossil_frights:text",nbt:"list_players",interpret:true,color:"gold"},{score:{name:"$day_result",objective:"ff_day"},color:"white"}]}]}
