local bits = require("bit")
local rshift, lshift = bit.rshift, bit.lshift

local stringutil = require("stringutil")
local split = stringutil.split
local tsplit = stringutil.tsplit
local spairs = require("spairs")

local function countRanges(ranges)
    local count = 0;
    for _,range in ipairs(ranges) do
        count = count + range.high - range.low + 1;
    end

    return count
end

-- Given list of ranges, combine them into
-- a smaller list of contiguous ranges
local function combineRanges(ranges)
    local newRanges = {}
    local lastRange

    for idx, range in ipairs(ranges) do
        if lastRange then
            if range.low == lastRange.high + 1 then
                lastRange.high = range.high;
            else
                table.insert(newRanges, lastRange)
                lastRange = range
            end
        else
            lastRange = range;
        end
    end
    table.insert(newRanges, lastRange)

    return newRanges
end

-- return low, high
-- or just low
-- or nil if numeric not found
local function getRange(str)
    local low, high = str:match("([0-9,a-f,A-F]+)%.%.([0-9,a-f,A-F]+)")

    if low and high then
        return tonumber(low, 16), tonumber(high, 16)
    end

    local low = tonumber(str:match("([0-9,a-f,A-F]+)"), 16)
    return low, low

end

local function getScriptRanges()
    local names = {}

    for line in io.lines(arg[1]) do 
        if not line:find("^#") and line ~= "" then
            local t = tsplit(line, ';')
            -- script name is in t[2], delimeter by first space
            local low, high = getRange(t[1])
            local size = high-low+1
            local scriptName = t[2]:match("([%a]+)")
--print(scriptName, low, high, size)
            if not names[scriptName] then
                names[scriptName] = {}
                names[scriptName].ranges = {}
            end

            table.insert(names[scriptName].ranges, {low = low, high = high})
        end
    end

    -- combine all script ranges
    for scriptName, v in pairs(names) do
            v.ranges = combineRanges(v.ranges)
            v.charCount = countRanges(v.ranges)
    end

    return names;
end

-- This function will print all the unique script names
-- in alphabetical order
local function printUniqueNames()
    local names = {}
    
    for line in io.lines(arg[1]) do 
        if not line:find("^#") and line ~= "" then
            local t = tsplit(line, ';')
            -- script name is in t[2], delimeter by first space
            local scriptName = t[2]:match("([%a]+)")

            names[scriptName] = true;
        end
    end


    for k,v in spairs(names) do
        print(k)
    end
end

-- This function will print all the unique scripts
-- with their ranges as subtables
local function printNameRanges()
    local scripts = getScriptRanges()

    -- print out the results
    for scriptName,v in spairs(scripts) do
        print(string.format("%s = {totalCodePoints = %d, ", scriptName, v.charCount))
        print("    ranges = {")
        for _, range in ipairs(v.ranges) do 
            print(string.format("        {low = 0x%04x, high = 0x%04x};", range.low, range.high))
        end
        print("    };")
        print("};")
    end
end


printNameRanges()
--printUniqueNames();
