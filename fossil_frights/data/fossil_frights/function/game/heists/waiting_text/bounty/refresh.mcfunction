function fossil_frights:game/heists/waiting_text/bounty/button {id:"1000",goal:1000,x:"-1.8",y:110.35,cy:110.30,normal:"",selected:""}
function fossil_frights:game/heists/waiting_text/bounty/button {id:"1250",goal:1250,x:"-1.0",y:110.35,cy:110.30,normal:"",selected:""}
function fossil_frights:game/heists/waiting_text/bounty/button {id:"1500",goal:1500,x:"-0.2",y:110.35,cy:110.30,normal:"",selected:""}
function fossil_frights:game/heists/waiting_text/bounty/button {id:"1750",goal:1750,x:"-1.8",y:110.05,cy:110.00,normal:"",selected:""}
function fossil_frights:game/heists/waiting_text/bounty/button {id:"2000",goal:2000,x:"-1.0",y:110.05,cy:110.00,normal:"",selected:""}
function fossil_frights:game/heists/waiting_text/bounty/button {id:"all",goal:-1,x:"-0.2",y:110.05,cy:110.00,normal:"",selected:""}
execute if score $heist_challenge_all ff_heist matches 1 as @e[type=minecraft:text_display,tag=ff_heist_bounty_all,tag=!ff_heist_bounty_selected] run function fossil_frights:game/heists/waiting_text/bounty/select {selected:""}
