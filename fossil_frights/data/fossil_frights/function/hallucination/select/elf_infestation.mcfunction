execute if score $h_elf_infestation ff_hallucination matches 1 run return 0
data modify storage fossil_frights:hallucinations selected set value {id:"elf_infestation",breakdown_on:"6",message:"ff.actionbar.hallucination.elf_infestation",color:"#45D143"}
function fossil_frights:hallucination/activate with storage fossil_frights:hallucinations selected
