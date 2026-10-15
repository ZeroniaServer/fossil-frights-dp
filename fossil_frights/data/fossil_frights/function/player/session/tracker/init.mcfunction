tag @s add ff_session_tracker

data modify storage fossil_frights:session tracker_data set value {CustomName:{color:"gray",text:"Session Tracker"},Age:-2147483648,Duration:2147483647,WaitTime:2147483647,Radius:0,data:{}}
data modify storage fossil_frights:session tracker_data.Owner set from storage fossil_frights:session player_data.UUID
data modify storage fossil_frights:session tracker_data.data.name set from storage fossil_frights:session player_name
data modify entity @s {} merge from storage fossil_frights:session tracker_data
data remove storage fossil_frights:session tracker_data

$say "$(player_name)" session STARTED
