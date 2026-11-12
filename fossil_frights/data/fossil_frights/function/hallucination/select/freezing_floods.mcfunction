execute if score $h_freezing_floods ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"freezing_floods",breakdown_on:"4",message:"ff.actionbar.hallucination.freezing_floods",color:"#3BB4FF"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
