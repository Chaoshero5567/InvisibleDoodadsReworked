-----------------------------------------------------------------------
--/  @file    Databases.Mod_InvisibleDoodadsReworked.lua
--/  @author  Chaoshero5567
--/  @version 1.0
--/
--/  @brief  A rework of the InvisibleDoodads Mod
--/
--/
--/  This file is added by ACSE as a Database manager, exposing all
--/  it CallOnContent methods to the game.
-----------------------------------------------------------------------
local global = _G
local api = global.api
local pairs = pairs
local type = type
local ipairs = ipairs
local next = global.next
local string = global.string

local Mod_InvisibleDoodadsReworked = module(...)

--
-- Define the databases to be merged and the merging rules
--
local tConfig = {

-- Load our Paths database
    tLoad = {
        Mod_InvisibleDoodadsReworkedTrackedRides = {sSymbol = "mod_invisibledoodadsreworkedtrackedrides"},
    },

    -- Merge with the existing Paths database.
    tCreateAndMerge = {
        TrackedRides = {
            tChildrenToMerge = {"Mod_InvisibleDoodadsReworkedTrackedRides"}
        },
    }
}

-- @brief GameDatabase hook to add load and merge custom databases
function Mod_InvisibleDoodadsReworked.GetDatabaseConfig()
    return tConfig
end