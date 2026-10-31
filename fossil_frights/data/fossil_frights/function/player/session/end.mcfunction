# Has variables: $(name) and $(uuid)

$scoreboard players reset $(name) ff_session_state
$team leave $(name)

$data modify storage fossil_frights:session save_data set value {name:"$(name)",uuid:$(uuid)}
$data modify storage fossil_frights:session save_data set from storage fossil_frights:player_data players."$(uuid)"
data modify storage fossil_frights:session save_data.scores set value {}
function fossil_frights:player/session/end/save_scores with storage fossil_frights:session save_data
$data modify storage fossil_frights:player_data players."$(uuid)" set from storage fossil_frights:session save_data
data remove storage fossil_frights:session save_data

# remove all scores
$scoreboard players reset $(name)
