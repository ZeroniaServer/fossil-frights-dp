scoreboard players set @s ff_actionbar_manager.slot.traps 20
scoreboard players display numberformat @s ff_actionbar_manager.slot.traps fixed {translate:"ff.actionbar.trap.picked_up",color:"#F43CA1"}
schedule function fossil_frights:player/actionbar/manager 1t append
