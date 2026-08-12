# Shared plaque dialogue template.
$data modify storage fossil_frights:plaques dialogue.name set value "$(name)"
execute on target run function fossil_frights:interactions/plaques/dialogue/display with storage fossil_frights:plaques dialogue
