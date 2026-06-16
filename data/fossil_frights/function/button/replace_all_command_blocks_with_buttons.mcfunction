execute positioned 20 71 28 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:game/next_day"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:game/next_day"}
setblock 20 71 30 minecraft:polished_tuff strict

execute positioned 16 71 23 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:game/end"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:game/end"}
setblock 16 69 23 minecraft:gray_wool strict

execute positioned 27 81 11 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/easy/toilet_clog/complete"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/easy/toilet_clog/complete"}
setblock 27 81 13 minecraft:acacia_log[axis=y] strict

execute positioned 25 80 16 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:animations/cubekoin/vending_machine/trigger"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:animations/cubekoin/vending_machine/trigger"}
setblock 26 79 16 minecraft:smooth_stone strict

execute positioned -18 95 10 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/easy/bathroom_leak/complete"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/easy/bathroom_leak/complete"}
setblock -17 95 11 minecraft:smooth_quartz strict

execute positioned 7 107 50 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/easy/static_buildup/complete"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/easy/static_buildup/complete"}
setblock 7 107 52 minecraft:andesite strict

execute positioned -21 71 48 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/easy/reset_salt_level/complete"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/easy/reset_salt_level/complete"}
setblock -21 71 46 minecraft:oxidized_copper strict

execute positioned 7 77 68 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:animations/credits/start"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:animations/credits/start"}
setblock 7 79 68 minecraft:smooth_stone strict

execute positioned 65 81 53 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/easy/fire_pottery/complete"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/easy/fire_pottery/complete"}
setblock 65 81 51 minecraft:mud_bricks strict

# This is not changed, as it is triggered by a sculk sensor, not a button
#/setblock 61 70 71 minecraft:command_block[conditional=false,facing=up]{Command:"function fossil_frights:tasks/easy/make_some_noise/trigger",LastExecution:55558353L,SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,components:{},conditionMet:0b,powered:0b}

execute positioned 68 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 68 73 76 minecraft:polished_tuff strict

execute positioned 69 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 69 73 76 minecraft:tuff strict

execute positioned 70 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 70 73 76 minecraft:polished_tuff strict

execute positioned 71 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 71 73 76 minecraft:tuff strict

execute positioned 72 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 72 73 76 minecraft:polished_tuff strict

execute positioned 73 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 73 73 76 minecraft:tuff strict

execute positioned 74 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 74 73 76 minecraft:polished_tuff strict

execute positioned 75 74 77 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:button/buttons/toggle_concrete_above_north"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:button/buttons/toggle_concrete_above_north"}
setblock 75 73 76 minecraft:tuff strict

# This is not changed, as it is triggered by a pressure plate, not a button
#/setblock -25 94 68 minecraft:command_block[conditional=false,facing=up]{Command:'/tellraw @p ["<",{"color":"red","text":"Ladybug"},"> Join the ladybug revolution!!"]',LastExecution:55567953L,SuccessCount:1,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,components:{},conditionMet:1b,powered:0b}

execute positioned 0 95 81 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/easy/reset_fountain/complete"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/easy/reset_fountain/complete"}
setblock 0 93 81 minecraft:andesite strict

execute positioned -21 101 89 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/hard/star_gazing/guess/spider"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/hard/star_gazing/guess/spider"}
setblock -21 100 90 minecraft:andesite strict

execute positioned -23 101 89 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/hard/star_gazing/guess/dragon"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/hard/star_gazing/guess/dragon"}
setblock -23 100 90 minecraft:andesite strict

execute positioned -25 101 89 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/hard/star_gazing/guess/bee"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/hard/star_gazing/guess/bee"}
setblock -25 100 90 minecraft:andesite strict

execute positioned -26 101 87 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/hard/star_gazing/guess/golem"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/hard/star_gazing/guess/golem"}
setblock -27 100 87 minecraft:andesite strict

execute positioned -26 101 85 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/hard/star_gazing/guess/guardian"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/hard/star_gazing/guess/guardian"}
setblock -27 100 85 minecraft:andesite strict

execute positioned -26 101 83 align xyz unless entity @e[limit=1,dx=0,type=interaction,tag=ff_button,nbt={data:{ff_button:{function:"fossil_frights:tasks/hard/star_gazing/guess/wither"}}}] run function fossil_frights:button/create {runs_function:"fossil_frights:tasks/hard/star_gazing/guess/wither"}
setblock -27 100 83 minecraft:andesite strict
