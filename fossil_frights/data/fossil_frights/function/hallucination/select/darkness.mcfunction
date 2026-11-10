execute if score $h_darkness ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"darkness",message:"ff.actionbar.hallucination.darkness",color:"#4A4742"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
