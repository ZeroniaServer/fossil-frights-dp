bossbar set fossil_frights:bossbar visible true
bossbar set fossil_frights:bossbar color white
bossbar set fossil_frights:bossbar value 0
execute if score $day_current ff_day matches 1 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ᴏɴᴇ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 2 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ᴛᴡᴏ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 3 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ᴛʜʀᴇᴇ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 4 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ꜰᴏᴜʀ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 5 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ꜰɪᴠᴇ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 6 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ꜱɪx: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 7 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ꜱᴇᴠᴇɴ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 8 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ᴇɪɢʜᴛ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 9 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ɴɪɴᴇ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
execute if score $day_current ff_day matches 10 run bossbar set fossil_frights:bossbar name [{"text":"ᴅᴀʏ ᴛᴇɴ: ","color":"white"},{"text":"05:00","font":"fossil-frights:small_numbers_high","color":"white"}]
