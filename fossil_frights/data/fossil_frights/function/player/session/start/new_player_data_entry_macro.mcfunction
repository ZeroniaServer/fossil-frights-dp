$execute if data storage fossil_frights:player_data players."$(uuid)" run return run data modify storage fossil_frights:player_data players."$(uuid)".name set value "$(name)"
$data modify storage fossil_frights:player_data players."$(uuid)" set value {name:"$(name)",uuid:$(uuid),scores:{}}
return 1
