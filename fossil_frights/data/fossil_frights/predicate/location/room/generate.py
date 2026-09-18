import os
import re
import json

with open("ROOMS.txt","r") as file:
    lines = file.readlines()

rooms: list[tuple] = []

for line in lines:

    match = re.search(r'^([\w_/]+):$',line)
    if match != None:
        groups = match.groups()
        rooms.append(
            [
                groups[0],
                {
                    "condition": "minecraft:all_of",
                    "terms": [
                        {
                            "condition": "minecraft:any_of",
                            "terms": []
                        },
                        {
                            "condition": "minecraft:inverted",
                            "term": {
                                "condition": "minecraft:any_of",
                                "terms": []
                            }
                        }
                    ]
                }
            ]
        )
        continue

    match = re.search(r'^\s+((?:EXCEPT(?=\s))?)\s*([\d.-]+)\s+([\d.-]+)\s+([\d.-]+)\s*-+>\s*([\d.-]+)\s+([\d.-]+)\s+([\d.-]+)$',line)
    if match != None:
        groups = match.groups()

        from_x, from_y, from_z, to_x, to_y, to_z = map(float,groups[1:])
        from_x, to_x = min(from_x,to_x), max(from_x,to_x)
        from_y, to_y = min(from_y,to_y), max(from_y,to_y)
        from_z, to_z = min(from_z,to_z), max(from_z,to_z)
        
        predicate = {
            "condition": "minecraft:all_of",
            "terms": [
                {
                    "condition": "minecraft:location_check",
                    "predicate": {
                        "position": {
                            "x": {
                                "min": from_x,
                                "max": to_x
                            },
                            "y": {
                                "min": from_y,
                                "max": to_y
                            },
                            "z": {
                                "min": from_z,
                                "max": to_z
                            }
                        }
                    }
                },
                {
                    "condition": "minecraft:inverted",
                    "term": {
                        "condition": "minecraft:any_of",
                        "terms": [
                            {
                                "condition": "minecraft:location_check",
                                "predicate": {
                                    "position": {
                                        "x": to_x
                                    }
                                }
                            },
                            {
                                "condition": "minecraft:location_check",
                                "predicate": {
                                    "position": {
                                        "y": to_y
                                    }
                                }
                            },
                            {
                                "condition": "minecraft:location_check",
                                "predicate": {
                                    "position": {
                                        "z": to_z
                                    }
                                }
                            }
                        ]
                    }
                }
            ]
        }

        if groups[0] != "EXCEPT":
            rooms[-1][1]["terms"][0]["terms"].append(predicate)
        else:
            rooms[-1][1]["terms"][1]["term"]["terms"].append(predicate)

        continue

    match = re.search(r'^\s+((?:AND(?=\s))?)\s*REFERENCE(?=\s)\s*([\w_/]+)$',line)
    if match != None:
        groups = match.groups()
        predicate = {
            "condition": "minecraft:reference",
            "name": f"fossil_frights:location/room/{groups[1]}"
        }

        if groups[0] == "AND":
            rooms[-1][1]["terms"].append(predicate)
        else:
            rooms[-1][1]["terms"][0]["terms"].append(predicate)
        
    if (match == None) and (line != "") and (line != "\n"):
        print(f"Skipped line: '{line.strip("\n").replace("'","\\'")}'")


for room_id, predicate in rooms:
    if len(predicate["terms"][1]["term"]["terms"]) == 0:
        predicate["terms"].pop(1)
    elif len(predicate["terms"][1]["term"]["terms"]) == 1:
        predicate["terms"][1]["term"] = predicate["terms"][1]["term"]["terms"][0]

    if len(predicate["terms"][0]["terms"]) == 0:
        predicate["terms"].pop(0)
    elif len(predicate["terms"][0]["terms"]) == 1:
        predicate["terms"][0] = predicate["terms"][0]["terms"][0]

    if len(predicate["terms"]) == 0:
        print(f"Failed to generate predicate '{room_id}'")
    elif len(predicate["terms"]) == 1:
        predicate = predicate["terms"][0]

    
    directory = "./"+"/".join(room_id.split("/")[:-1])
    if (directory != "./") and not os.path.isdir(directory):
        os.mkdir(directory)

    with open(f"./{room_id}.json","w") as file:
        json.dump(predicate,file,indent="  ")
