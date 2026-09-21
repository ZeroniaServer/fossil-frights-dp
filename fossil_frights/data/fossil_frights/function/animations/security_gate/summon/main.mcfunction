$data modify storage fossil_frights:security_gate entity_data set value {data:{ff_security_gate:{type:"$(type)",facing:"$(facing)"}},item:{components:{item_model:"fossil-frights:display/general/security_gate/$(type)"}}}
data modify storage fossil_frights:security_gate entity_data merge value {Tags:["ff_security_gate"],Rotation:[0,0],item:{id:"minecraft:stone",components:{custom_model_data:{floats:[0]}}},teleport_duration:1}

execute if data storage fossil_frights:security_gate entity_data.data.ff_security_gate{facing:"north"} run data modify storage fossil_frights:security_gate entity_data.Rotation[0] set value 180
execute if data storage fossil_frights:security_gate entity_data.data.ff_security_gate{facing:"east"} run data modify storage fossil_frights:security_gate entity_data.Rotation[0] set value -90
#execute if data storage fossil_frights:security_gate entity_data.data.ff_security_gate{facing:"south"} run data modify storage fossil_frights:security_gate entity_data.Rotation[0] set value 0
execute if data storage fossil_frights:security_gate entity_data.data.ff_security_gate{facing:"west"} run data modify storage fossil_frights:security_gate entity_data.Rotation[0] set value 90

$data modify storage fossil_frights:security_gate gate_data set from storage fossil_frights:security_gate gates."$(type)"
data modify storage fossil_frights:security_gate entity_data.width set from storage fossil_frights:security_gate gate_data.width
data modify storage fossil_frights:security_gate entity_data.width set from storage fossil_frights:security_gate gate_data.visual_width
data modify storage fossil_frights:security_gate entity_data.height set from storage fossil_frights:security_gate gate_data.height
data modify storage fossil_frights:security_gate entity_data.height set from storage fossil_frights:security_gate gate_data.visual_height

data modify storage fossil_frights:security_gate entity_data.Tags append value "ff_security_gate.new"
function fossil_frights:animations/security_gate/summon/summon with storage fossil_frights:security_gate {}

execute as @e[limit=1,type=minecraft:item_display,tag=ff_security_gate.new] rotated as @s run function fossil_frights:animations/security_gate/summon/init with storage fossil_frights:security_gate gate_data
