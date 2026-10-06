scoreboard players set $trap_ui_six ff_trap_balance 6
function fossil_frights:items/heists/trap/ui/set_slot_glow
function fossil_frights:items/heists/trap/ui/set_slot_freeze
function fossil_frights:items/heists/trap/ui/set_slot_antigravity
function fossil_frights:items/heists/trap/ui/set_slot_jelly
function fossil_frights:items/heists/trap/ui/set_slot_explosive

scoreboard players set @s ff_actionbar_manager.slot.traps 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.traps fixed [{text:"",font:"fossil_frights:trap_ui"},{storage:"fossil_frights:trap_ui",nbt:"slot1",interpret:true},{storage:"fossil_frights:trap_ui",nbt:"slot2",interpret:true},{storage:"fossil_frights:trap_ui",nbt:"slot3",interpret:true},{storage:"fossil_frights:trap_ui",nbt:"slot4",interpret:true},{storage:"fossil_frights:trap_ui",nbt:"slot5",interpret:true}]
tag @s remove ff_actionbar.fading_out
schedule function fossil_frights:player/actionbar/manager 1t append
