tag @s add ff_session_tracker

data modify storage fossil_frights:session tracker_data set value {CustomName:{color:"gray",text:"Session Tracker"},Age:-2147483648,Duration:2147483647,WaitTime:2147483647,Radius:0,data:{}}
data modify storage fossil_frights:session tracker_data.Owner set from storage fossil_frights:session player_data.uuid
data modify storage fossil_frights:session tracker_data.data.uuid set from storage fossil_frights:session player_data.uuid
data modify storage fossil_frights:session tracker_data.data.name set from storage fossil_frights:session player_data.name
data modify entity @s {} merge from storage fossil_frights:session tracker_data
data remove storage fossil_frights:session tracker_data
