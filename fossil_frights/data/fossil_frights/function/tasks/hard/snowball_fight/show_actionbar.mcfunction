data modify storage fossil_frights:snowball_fight glyphs set value ["\ue520","\ue520","\ue520"]
execute if score $snowball_fight_hits ff_task_state matches 1.. run data modify storage fossil_frights:snowball_fight glyphs[0] set value "\ue521"
execute if score $snowball_fight_hits ff_task_state matches 2.. run data modify storage fossil_frights:snowball_fight glyphs[1] set value "\ue521"
execute if score $snowball_fight_hits ff_task_state matches 3.. run data modify storage fossil_frights:snowball_fight glyphs[2] set value "\ue521"
scoreboard players set @s ff_actionbar_manager.slot.snowball_fight 1
scoreboard players display numberformat @s ff_actionbar_manager.slot.snowball_fight fixed ["",{storage:"fossil_frights:snowball_fight",nbt:"glyphs[0]",interpret:true,font:"fossil_frights:actionbar/snowball_fight"}," ",{storage:"fossil_frights:snowball_fight",nbt:"glyphs[1]",interpret:true,font:"fossil_frights:actionbar/snowball_fight"}," ",{storage:"fossil_frights:snowball_fight",nbt:"glyphs[2]",interpret:true,font:"fossil_frights:actionbar/snowball_fight"}]
