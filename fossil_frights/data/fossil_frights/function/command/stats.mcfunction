tellraw @s {translate:"ff.stats.title",color:"gold"}

# Best Time
data modify storage fossil_frights:stats_command top_time set value {result:"",minutes:0,seconds_digits:[0,0],decimals_digits:[0,0]}
data modify storage fossil_frights:stats_command top_time.minutes set compute default integer fossil_frights:stats/top_time/display_minutes
data modify storage fossil_frights:stats_command top_time.seconds_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/top_time/display_seconds",right:10}
data modify storage fossil_frights:stats_command top_time.seconds_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/top_time/display_seconds",right:10}
data modify storage fossil_frights:stats_command top_time.decimals_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/top_time/display_decimals",right:10}
data modify storage fossil_frights:stats_command top_time.decimals_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/top_time/display_decimals",right:10}
execute unless score @s ff_top_time matches 1.. run data modify storage fossil_frights:stats_command top_time.result set value {color:"gray",text:"--:--.--"}
execute if score @s ff_top_time matches 1.. run data modify storage fossil_frights:stats_command top_time.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"top_time.minutes",plain:true},":",{storage:"fossil_frights:stats_command",nbt:"top_time.seconds_digits[]",separator:"",plain:true},".",{storage:"fossil_frights:stats_command",nbt:"top_time.decimals_digits[]",separator:"",plain:true}]}
tellraw @s [{translate:"ff.stats.best_time",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"top_time.result",interpret:true}]}]

# Best Day
data modify storage fossil_frights:stats_command top_day set value {result:"",day:0}
execute store result storage fossil_frights:stats_command top_day.day int 1 run scoreboard players get @s ff_top_day
data modify storage fossil_frights:stats_command top_day.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"top_day.day",plain:true}]}
tellraw @s [{translate:"ff.stats.best_day",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"top_day.result",interpret:true}]}]

# Total Runs
data modify storage fossil_frights:stats_command run_count set value {result:"",runs:0}
execute store result storage fossil_frights:stats_command run_count.runs int 1 run scoreboard players get @s ff_run_count
data modify storage fossil_frights:stats_command run_count.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"run_count.runs",plain:true}]}
tellraw @s [{translate:"ff.stats.total_runs",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"run_count.result",interpret:true}]}]

# Duo's Best Time
data modify storage fossil_frights:stats_command duo_best set value {result:"",minutes:0,seconds_digits:[0,0],decimals_digits:[0,0]}
data modify storage fossil_frights:stats_command duo_best.minutes set compute default integer fossil_frights:stats/duo_best/display_minutes
data modify storage fossil_frights:stats_command duo_best.seconds_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/duo_best/display_seconds",right:10}
data modify storage fossil_frights:stats_command duo_best.seconds_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/duo_best/display_seconds",right:10}
data modify storage fossil_frights:stats_command duo_best.decimals_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/duo_best/display_decimals",right:10}
data modify storage fossil_frights:stats_command duo_best.decimals_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/duo_best/display_decimals",right:10}
execute unless score @s ff_duo_best matches 1.. run data modify storage fossil_frights:stats_command duo_best.result set value {color:"gray",text:"--:--.--"}
execute if score @s ff_duo_best matches 1.. run data modify storage fossil_frights:stats_command duo_best.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"duo_best.minutes",plain:true},":",{storage:"fossil_frights:stats_command",nbt:"duo_best.seconds_digits[]",separator:"",plain:true},".",{storage:"fossil_frights:stats_command",nbt:"duo_best.decimals_digits[]",separator:"",plain:true}]}
tellraw @s [{translate:"ff.stats.duos_best_time",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"duo_best.result",interpret:true}]}]

#
tellraw @s {translate:"ff.stats.separator",color:"gold"}

# Parkour
data modify storage fossil_frights:stats_command parkour_best set value {result:"",minutes:0,seconds_digits:[0,0],decimals_digits:[0,0]}
data modify storage fossil_frights:stats_command parkour_best.minutes set compute default integer fossil_frights:stats/parkour_best/display_minutes
data modify storage fossil_frights:stats_command parkour_best.seconds set compute default integer fossil_frights:stats/parkour_best/display_seconds
data modify storage fossil_frights:stats_command parkour_best.seconds_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/parkour_best/display_seconds",right:10}
data modify storage fossil_frights:stats_command parkour_best.seconds_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/parkour_best/display_seconds",right:10}
data modify storage fossil_frights:stats_command parkour_best.decimals_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/parkour_best/display_decimals",right:10}
data modify storage fossil_frights:stats_command parkour_best.decimals_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/parkour_best/display_decimals",right:10}
execute unless score @s ff_parkour_best matches 1.. run data modify storage fossil_frights:stats_command parkour_best.result set value {color:"gray",text:"--.--s"}
execute if score @s ff_parkour_best matches 1..5999 run data modify storage fossil_frights:stats_command parkour_best.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"parkour_best.seconds",plain:true},".",{storage:"fossil_frights:stats_command",nbt:"parkour_best.decimals_digits[]",separator:"",plain:true},"s"]}
execute if score @s ff_parkour_best matches 6000.. run data modify storage fossil_frights:stats_command parkour_best.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"parkour_best.minutes",plain:true},":",{storage:"fossil_frights:stats_command",nbt:"parkour_best.seconds_digits[]",separator:"",plain:true},".",{storage:"fossil_frights:stats_command",nbt:"parkour_best.decimals_digits[]",separator:"",plain:true}]}
tellraw @s [{translate:"ff.stats.parkour",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"parkour_best.result",interpret:true}]}]

# Temple Run
data modify storage fossil_frights:stats_command temple_run_best set value {result:"",minutes:0,seconds_digits:[0,0],decimals_digits:[0,0]}
data modify storage fossil_frights:stats_command temple_run_best.minutes set compute default integer fossil_frights:stats/temple_run_best/display_minutes
data modify storage fossil_frights:stats_command temple_run_best.seconds set compute default integer fossil_frights:stats/temple_run_best/display_seconds
data modify storage fossil_frights:stats_command temple_run_best.seconds_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/temple_run_best/display_seconds",right:10}
data modify storage fossil_frights:stats_command temple_run_best.seconds_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/temple_run_best/display_seconds",right:10}
data modify storage fossil_frights:stats_command temple_run_best.decimals_digits[0] set compute default integer {type:"minecraft:floor_div",left:"fossil_frights:stats/temple_run_best/display_decimals",right:10}
data modify storage fossil_frights:stats_command temple_run_best.decimals_digits[1] set compute default integer {type:"minecraft:floor_mod",left:"fossil_frights:stats/temple_run_best/display_decimals",right:10}
execute unless score @s ff_temple_run_best matches 1.. run data modify storage fossil_frights:stats_command temple_run_best.result set value {color:"gray",text:"--.--s"}
execute if score @s ff_temple_run_best matches 1..5999 run data modify storage fossil_frights:stats_command temple_run_best.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"temple_run_best.seconds",plain:true},".",{storage:"fossil_frights:stats_command",nbt:"temple_run_best.decimals_digits[]",separator:"",plain:true},"s"]}
execute if score @s ff_temple_run_best matches 6000.. run data modify storage fossil_frights:stats_command temple_run_best.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"temple_run_best.minutes",plain:true},":",{storage:"fossil_frights:stats_command",nbt:"temple_run_best.seconds_digits[]",separator:"",plain:true},".",{storage:"fossil_frights:stats_command",nbt:"temple_run_best.decimals_digits[]",separator:"",plain:true}]}
tellraw @s [{translate:"ff.stats.temple_run",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"temple_run_best.result",interpret:true}]}]

# Ant Score
data modify storage fossil_frights:stats_command ant_score set value {result:"",score:0}
execute store result storage fossil_frights:stats_command ant_score.score int 1 run scoreboard players get @s ff_ant_score
data modify storage fossil_frights:stats_command ant_score.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"ant_score.score",plain:true}]}
tellraw @s [{translate:"ff.stats.ant_score",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"ant_score.result",interpret:true}]}]

# Ant Top Score
data modify storage fossil_frights:stats_command ant_top_score set value {result:"",score:0}
execute store result storage fossil_frights:stats_command ant_top_score.score int 1 run scoreboard players get @s ff_ant_top_score
data modify storage fossil_frights:stats_command ant_top_score.result set value {text:"",color:"white",extra:[{storage:"fossil_frights:stats_command",nbt:"ant_top_score.score",plain:true}]}
tellraw @s [{translate:"ff.stats.ant_top_score",color:"yellow",with:[{storage:"fossil_frights:stats_command",nbt:"ant_top_score.result",interpret:true}]}]
