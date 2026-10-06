scoreboard players set @s ff_actionbar_manager.slot.invisipunch_cooldown 1
$scoreboard players display numberformat @s ff_actionbar_manager.slot.invisipunch_cooldown fixed [{text:"Invisi",font:"fossil_frights:small_caps",color:"#90cced"},{text:"punch",font:"fossil_frights:small_caps",color:"gold"},{text:"\uE601",font:"fossil_frights:invisipunch_layout"},{text:"$(glyph)",font:"fossil_frights:actionbar/thief_ability_cooldown",color:"white"},{text:"\uE602",font:"fossil_frights:invisipunch_layout"}]
schedule function fossil_frights:player/actionbar/manager 1t append
