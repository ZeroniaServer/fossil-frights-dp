# MUST update complete.mcfunction clear line to clear the proper ff_task_book tag; currently placeholder.
# Replace the summon command below with your generated written book item entity.
# Keep the ff_task_book_temp tag so the shared bookshelf inserter can find it.
summon item 18 72 29 {Tags:["ff_task_book_temp"],PickupDelay:32767,Age:-32768,Item:{id:"minecraft:written_book",count:1,components:{"minecraft:item_name":{text:"Hard Task 8",italic:false},"minecraft:custom_data":{ff_task_book:"hard_task_8"}}}}
function fossil_frights:tasks/bookcase/insert_selected_book
