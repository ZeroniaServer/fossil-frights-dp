scoreboard objectives add ff_below_name_text.unresolved dummy
scoreboard objectives modify ff_below_name_text.unresolved numberformat blank

scoreboard objectives add ff_below_name_text dummy
scoreboard objectives modify ff_below_name_text displayname ""
scoreboard objectives modify ff_below_name_text numberformat fixed "\u17b6"
scoreboard objectives setdisplay below_name

schedule function fossil_frights:player/name_tag/tick 1t
