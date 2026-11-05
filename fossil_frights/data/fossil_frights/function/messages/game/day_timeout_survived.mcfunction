execute unless entity @a[predicate=fossil_frights:player/team/guard,limit=1] run return 0

function fossil_frights:util/text/list_players {selector:"@a[predicate=fossil_frights:player/team/guard]"}
tellraw @a {translate:"ff.messages.announcement",color:"gold",with:[{translate:"ff.survived_to_day",with:[{storage:"fossil_frights:text",nbt:"list_players",interpret:true,color:"gold"},{score:{name:"$day_result",objective:"ff_day"},color:"white"}]}]}
