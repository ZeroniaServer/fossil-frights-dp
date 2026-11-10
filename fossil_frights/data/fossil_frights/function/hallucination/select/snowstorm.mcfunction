execute if score $h_snowstorm ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"snowstorm",message:"ff.actionbar.hallucination.snowstorm",color:"#D1ECF0"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
