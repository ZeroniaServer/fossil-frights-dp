import os
import re
import json
import copy

TEMPLATE: dict = {
  "type": "minecraft:generic",
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "minecraft:written_book",
          "functions": [
            {
              "function": "minecraft:set_components",
              "components": {
                "minecraft:written_book_content": {
                  "title": "ʙᴀᴛʜʀᴏᴏᴍ ʟᴇᴀᴋ",
                  "author": "ғᴏssɪʟ ғʀɪɢʜᴛs",
                  "pages": [
                    [
                      "ʙᴀᴛʜʀᴏᴏᴍ ʟᴇᴀᴋ\n",
                      "-------------------\n",
                      "ʙᴀᴛʜʀᴏᴏᴍ ● ",
                      {
                        "text": "ᴇᴀꜱʏ\n",
                        "color": "green"
                      },
                      "\nThere was a report of a flooded toilet in one of the bathrooms. Not sure which stall, or floor even; please find it and fix it. Usually flushing is a good temporary fix."
                    ]
                  ]
                },
                "minecraft:custom_name": {
                  "text": "ʙᴀᴛʜʀᴏᴏᴍ ʟᴇᴀᴋ",
                  "color": "green",
                  "italic": False
                },
                "minecraft:lore": [
                  {
                    "text": "",
                    "extra": [
                      "task_easy"
                    ]
                  }
                ],
                "minecraft:enchantment_glint_override": False,
                "minecraft:tooltip_display": {
                  "hidden_components": [
                    "minecraft:lore",
                    "minecraft:written_book_content"
                  ]
                },
                "minecraft:max_stack_size": 99,
                "minecraft:custom_data": {
                  "ff_task_book": "bathroom_leak"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}

#execute positioned 18 72 29 run function fossil_frights:items/util/summon_item {nbt:{Tags:["ff_task_book_temp"],PickupDelay:32767,Age:-32768},loot_table:"fossil_frights:items/task_books/easy/bathroom_leak"}


difficulty = "hard"
for dirpath, dirnames, filenames in os.walk(difficulty):
    for file_name in filenames:
        name = ".".join(file_name.split(".")[:-1])
        extension = file_name.split(".")[-1]
        if not ((extension == "mcfunction") and (name == "selected_book")):
            continue
        with open(os.path.join(dirpath,file_name),"r",encoding="utf-8") as file:
            command = file.readlines()[0]
        custom_name, pages, task_book_id = re.findall(r'''written_book_content:\{title:"(.*?)",author:".*?",pages:(\[.*?\])\},custom_name:.*ff_task_book:"(.*?)"''',command)[0]
        pages = json.loads(pages)
        for page in pages:
            if not isinstance(page,list):
                continue
            for i, text_component in enumerate(page):
                if isinstance(text_component,dict):
                    if (len(text_component.keys()) == 1) and ("text" in text_component.keys()):
                        page[i] = text_component["text"]

        loot_table_contents = copy.deepcopy(TEMPLATE)
        loot_table_contents["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:written_book_content"]["title"] = custom_name
        loot_table_contents["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:written_book_content"]["pages"] = pages
        loot_table_contents["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:custom_name"]["text"] = custom_name
        loot_table_contents["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:lore"][0]["extra"][0] = f"task_{difficulty}"
        loot_table_contents["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:custom_data"]["ff_task_book"] = task_book_id

        with open(f"{difficulty}/{task_book_id}.json","w",encoding="utf-8") as file:
            json.dump(loot_table_contents,file,indent="  ",ensure_ascii=False)
            file.write("\n")

