scoreboard players set @s ff_actionbar_manager.slot.invisipunch_cooldown 1
$scoreboard players display numberformat @s ff_actionbar_manager.slot.invisipunch_cooldown fixed [{text:"Invisi",font:"fossil_frights:small_caps",color:"#7c7c10"},{text:"punch",font:"fossil_frights:small_caps",color:"#7c7c0c"},{text:"\uE601",font:"fossil_frights:invisipunch_layout"},{text:"$(glyph)",font:"fossil_frights:actionbar/thief_ability_cooldown",color:"#7c7c08"},{text:"\uE602",font:"fossil_frights:invisipunch_layout"}]
schedule function fossil_frights:player/actionbar/manager 1t append
