local match = string.match

-- Assuming an input such as 0023..004A
-- return the low, high, size 
-- of the range.  Default base for numbers is 16
local function parseRange(str, base)
    base = base or 16
    local v1, v2 = match(str, "([0-9,a-f,A-F]+)%.%.([0-9,a-f,A-F]+)")

    if v1 and v2 then
        local low = tonumber(v1,base)
        local high = tonumber(v2, base)

        return low, high, high-low+1
    end

    local value = match(str, "([0-9,a-f,A-F]+)")

    local low = tonumber(value, base)
    return low, low, low - low + 1

end

-- Given list of ranges, combine them into
-- a smaller list of more contiguous ranges
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

local function sumRanges(ranges)
    local count = 0;
    for _,range in ipairs(ranges) do
        count = count + range.high - range.low + 1;
    end

    return count
end


return {
    parseRange = parseRange,
    combineRanges = combineRanges,
    sumRanges = sumRanges,
}