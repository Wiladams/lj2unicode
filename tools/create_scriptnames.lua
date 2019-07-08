local bits = require("bit")
local rshift, lshift = bit.rshift, bit.lshift

local stringutil = require("stringutil")
local split = stringutil.split
local tsplit = stringutil.tsplit
local spairs = require("spairs")

local utils = require("utils")
local parseRange = utils.parseRange
local combineRanges = utils.combineRanges
local sumRanges = utils.sumRanges






local function getScriptRanges()
    local names = {}

    for line in io.lines(arg[1]) do 
        if not line:find("^#") and line ~= "" then
            local t = tsplit(line, ';')

            local low, high, size = parseRange(t[1], 16)

            -- script name is in t[2], delimeter by first space
            local scriptName = t[2]:match("([%a]+)")

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
            v.charCount = sumRanges(v.ranges)
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
