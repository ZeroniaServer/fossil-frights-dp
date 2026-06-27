# night's library

## ITEM CUSTOM DATA TAGS

    nlib:{
        save:false              -   Do not save this item to your inventory in the database.
    }


## PLAYER TAGS

    debug                               -   Developer override tag, view debug messages.
    nlib.flag.disable_spectate_keybind  -   Disables shift+space keybind functionality while in spectator mode.
    nlib.spectate                       -   Players with this tag trigger the player/spectate module, if the setting is enabled.
    nlib.spectate.bound                 -   Forces the player to spectate the nearest non-spectator.


## HIDE CHAT FLAGS

    Assigning a nlib:flag/hide_chat advancement criterion prevents the player from seeing @a chat messages from various modules.
    
    nlib:flag/hide_chat debug                        -   various system and debug messages that play globally.
    nlib:flag/hide_chat reload                       -   messages sent on /reload & server startup.


## FUNCTION TAGS

    #nlib:core/version                          -   runs when /trigger version is used.
    #nlib:core/load/cache                       -   runs on /reload & server startup - load nlib:data cache.
    #nlib:core/load/test/start                  -   runs on /reload & server startup - load data tests.
    #nlib:core/load/test/result                 -   runs on /reload & server startup - send test results to chat.
    #nlib:module/player/spectate_start          -   Called when: the player enters spectator mode.
    #nlib:module/player/spectate_end            -   Called when: the player exits spectator mode.
    #nlib:module/player/spectate_menu           -   Called when: the player inputs shift+space or uses /trigger spectate_menu.
    #nlib:module/player/spectate_noclip         -   Called when: the player is noclipping through blocks.


## LIBRARY UTILITIES

    nlib:util/data/reload                    -  prints formatted version change info to chat.
    nlib:util/data/version {url:''}          -  prints formatted version info to chat.


## LIBRARY MODULES

    nlib:module/database  -  Manages the storage database: nlib.database:main
    
        For arbitrary UUID-based storage:
        1. Run the ../player/load function.
        2. Modify the storage: nlib:dummy db
        3. Run the ../player/save function.
    
        For player inventory storage:
        1. Set .inventory on the dummy scoreboard to any value.
        2. Run the ../player/inventory/save or ../player/inventory/load function as the player.
        3. Saves or loads the player's inventory under the ID specified by the .inventory value, defaults to 1 if unset.
    
        Related functions:
        - ../player/load
        - ../player/save
        - ../player/inventory/load
        - ../player/inventory/save
    
        Related [minecraft:custom_data={nlib:{}}] tags:
        - save:false    -   Do not save this item to the inventory database.

    nlib:module/player  -  Systems related to player management.
    
        ../spectate/    -   Spectator management system.
    
            The spectate system can do the following:
            - Force-spectate the nearest non-spectator.
            - Copy the nearest non-spectator's inventory.
            - Style the locator bar icon as texture [nlib:ghost].
            - Repeat an actionbar message. Set the numberformat of [@s nlib.actionbar.spectate] to modify.
            - Run contents of function #nlib:module/player/spectate_menu when pressing shift+space or using /trigger spectate_menu.
            - Run contents of function #nlib:module/player/spectate_noclip when noclipping through blocks.
    
            Related Tags[]
            - nlib.spectate                        -   Players with this tag trigger the player/spectate module.
            - nlib.spectate.bound                  -   Forces the player to spectate the nearest non-spectator.
            - nlib.flag.disable_spectate_keybind   -   Disables shift+space keybind functionality while in spectator mode.
    
            Related function tags:
            - #nlib:module/player/spectate_end     -   Called when: the player exits spectator mode.
            - #nlib:module/player/spectate_menu    -   Called when: the player inputs shift+space or uses /trigger spectate_menu.
            - #nlib:module/player/spectate_noclip  -   Called when: the player is noclipping through blocks.
            - #nlib:module/player/spectate_start   -   Called when: the player enters spectator mode.
    
            Related settings (nlib.setting)
            - $nlib.spectate                       -   System toggle. If 2, all spectators are forced to spectate the nearest non-spectator.
            - $nlib.spectate.waypoint              -   If 1, override the locator bar icon of spectating players.
            - $nlib.spectate.inventory             -   If 1, copy the nearest non-spectator's inventory when spectating.
            - $nlib.spectate.noclip                -   If 1, allows noclip and doesnt run function #nlib:module/player/spectate_noclip.
            - $nlib.trigger.spectate_menu          -   If 1, allows /trigger spectate_menu.
            - $nlib.cooldown.spectate_input        -   Minimum time between key input activation in ticks, defaults to 10.
