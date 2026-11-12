execute if score $h_avalanche ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"avalanche",breakdown_on:"2",message:"ff.actionbar.hallucination.avalanche",color:"#B5E7FF"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
