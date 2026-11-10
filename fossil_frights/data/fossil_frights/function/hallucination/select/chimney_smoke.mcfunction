execute if score $h_chimney_smoke ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"chimney_smoke",message:"ff.actionbar.hallucination.chimney_smoke",color:"gray"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
