execute if score $h_darkness ff_hallucination matches 1 run return 0
scoreboard players set #lights_start_phase ff_hazard_rng 0
data modify storage fossil_frights:hallucinations selected set value {id:"darkness",breakdown_on:"3",message:"ff.actionbar.hallucination.darkness",color:"#4A4742"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
