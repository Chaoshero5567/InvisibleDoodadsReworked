local global	= _G
local api       = global.api
local table     = global.table
local require   = require
local string    = string

local awesome_renaming = module ( ... )

local tConfig = 
{
    tLoad = 
    {
    },
    tCreateAndMerge = 
    {
    },
}


function awesome_renaming.GetDatabaseConfig()
    return tConfig
end
