data modify storage fossil_frights:bossbar components set value [""]

# security
execute if predicate fossil_frights:game_state/hazard_active/security run data modify storage fossil_frights:bossbar components append value "\ue123"
execute if predicate fossil_frights:game_state/hallucination_active/jolly_curse run data modify storage fossil_frights:bossbar components append value {text:"\ue134",font:"fossil_frights:icons/hallucinations"}
execute if predicate fossil_frights:game_state/hallucination_active/avalanche run data modify storage fossil_frights:bossbar components append value {text:"\ue130",font:"fossil_frights:icons/hallucinations"}
execute if predicate fossil_frights:game_state/hallucination_active/darkness run data modify storage fossil_frights:bossbar components append value {text:"\ue135",font:"fossil_frights:icons/hallucinations"}
execute if predicate fossil_frights:game_state/hallucination_active/freezing_floods run data modify storage fossil_frights:bossbar components append value {text:"\ue133",font:"fossil_frights:icons/hallucinations"}
execute if predicate fossil_frights:game_state/hallucination_active/snowstorm run data modify storage fossil_frights:bossbar components append value {text:"\ue136",font:"fossil_frights:icons/hallucinations"}
execute if predicate fossil_frights:game_state/hallucination_active/elf_infestation run data modify storage fossil_frights:bossbar components append value {text:"\ue132",font:"fossil_frights:icons/hallucinations"}
execute if predicate fossil_frights:game_state/hallucination_active/chimney_smoke run data modify storage fossil_frights:bossbar components append value {text:"\ue131",font:"fossil_frights:icons/hallucinations"}

bossbar set fossil_frights:hazards name {font:"fossil_frights:icons/hazards",storage:"fossil_frights:bossbar",nbt:"components[]",interpret:true,separator:""}
bossbar set fossil_frights:hazards visible true
