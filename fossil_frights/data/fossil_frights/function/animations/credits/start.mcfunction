function fossil_frights:animations/credits/cleanup

data modify storage fossil_frights:credits credits set value [\
    {\
        type: "banner"\
    },\
    {\
        type: "lines",\
        lines: [\
            {translate:"ff.credits.role.game_designer",bold:true},\
            "Polysquarazoid",\
            "",\
            "",\
            {translate:"ff.credits.role.build_lead",bold:true},\
            "RiverTiger76",\
            "",\
            "",\
            {translate:"ff.credits.role.developers",bold:true},\
            "Polysquarazoid",\
            "DorkOrc",\
            "RiverTiger76",\
            "Stuffy",\
            "Evtema3",\
            "nightlibra",\
            "",\
            "",\
            {translate:"ff.credits.role.plugin_developers",bold:true},\
            "Polysquarazoid",\
            "CAG2",\
            "",\
            "",\
            {translate:"ff.credits.role.resource_pack",bold:true},\
            "Polysquarazoid",\
            "RiverTiger76",\
            "DorkOrc",\
            "marten213",\
            "",\
            "",\
            {translate:"ff.credits.role.shaders",bold:true},\
            "Evtema3",\
            "",\
            "",\
            {translate:"ff.credits.role.builders",bold:true},\
            "RiverTiger76",\
            "Polysquarazoid",\
            "Endyblaze201",\
            "Creepanator77",\
            "Stuffy",\
            "SirSpaceWalker",\
            "SaffronWizard",\
            "",\
            "",\
            {translate:"ff.credits.role.quality_assurance",bold:true},\
            "Ialo01",\
            "Mozzie4014",\
            "",\
            "",\
            {translate:"ff.credits.role.translators",bold:true},\
            "Stuffy",\
            ["ZeroIceBear - ",{translate:"ff.credits.translation.chinese_simplified"}],\
            ["TheOnlyMann - ",{translate:"ff.credits.translation.korean"}],\
            ["Yatloaf - ",{translate:"ff.credits.translation.german"}],\
            ["tainoji_z - ",{translate:"ff.credits.translation.japanese"}],\
            ["Shiro - ",{translate:"ff.credits.translation.spanish"}],\
            ["Zeronia - ",{translate:"ff.credits.translation.cave_man"}],\
            ["DorkOrc - ",{translate:"ff.credits.translation.english_localizations"}],\
            "",\
            "",\
            {translate:"ff.credits.role.playtesters",bold:true},\
        ]\
    },\
    {\
        type: "two_columns",\
        left: [\
            "marten213",\
            "Michael2_3B",\
            "PistonLord",\
            "Power_Blackflame",\
            "TheOnlyMann",\
            "Tomiebeer2",\
            "Trashpanda__",\
            "vorticepen",\
            "Yatloaf",\
            "Z_Dart",\
        ],\
        right: [\
            "20Aleksa08",\
            "4321boom4321",\
            "Aradam",\
            "AvatarAa",\
            "Cag2",\
            "Cyrinthial",\
            "Gewoon_Stefan_",\
            "Ialo01",\
            "iRobo",\
            "LionZeb",\
        ]\
    },\
    {\
        type: "lines",\
        lines: [\
            "",\
            "",\
            "",\
            "",\
            "",\
            "",\
            "",\
            {text:"zeronia.org/ff",underlined:true},\
        ]\
    }\
]
schedule function fossil_frights:animations/credits/summon_lines 1t

execute positioned 26 77.85 75.0 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/storage/credit_reel",nbt:{Tags:["ff_credits","ff_credits_reel"],width:1.5,height:1.5,brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0.75,0],scale:[0.5,0.5,0.5]}}}
scoreboard players set #credit_reel_animation_time ff_global 0

schedule function fossil_frights:animations/credits/tick 1t
