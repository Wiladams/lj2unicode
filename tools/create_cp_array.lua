--[[
    Generate a C data structure which is an array
    of all assigned codepoints, and their numeric
    representation of their category.

    Future:  Add other interesting properties besides
    base category.
]]
-- load unicodedata
local cpdata = require("unicodedata")

-- load generalcategory
local cpcategory = require("generalcategory")

local function printCodepointArray()

    local lastCodePoint = 0x10FFFD

io.write([[
#include <stdint.h>

typedef struct {
    uint32_t codepoint;
    uint32_t category;
} CPProperties;

CPProperties cpArray []= {
]])
    local cpcount = 0;
    for i=0, lastCodePoint do
        local cpdata = cpdata[i]
        if cpdata then
            local gcordinal = cpcategory[cpdata.gc].ordinal
            print(string.format("{0x%04x,%d},", i, gcordinal))
            cpcount = cpcount + 1;
        end
    end

io.write([[
};
]])

    print(string.format("size_t nEntries = %d;", cpcount))
end

printCodepointArray()
