execute if score $h_jolly_curse ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"jolly_curse",breakdown_on:"1",message:"ff.actionbar.hallucination.jolly_curse",color:"#ED3777"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
