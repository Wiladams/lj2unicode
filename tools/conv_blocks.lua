local bits = require("bit")
local rshift, lshift = bit.rshift, bit.lshift

local stringutil = require("stringutil")
local split = stringutil.split
local tsplit = stringutil.tsplit


local function getPlaneNumber(codePoint)
    return rshift(codePoint, 16)
end

io.write([=[
--[[
File Generated from:
luajit conv_blocks.lua ..\ucdsource\Blocks.txt > blocks.lua

If you want to make modifications to this file, you should generate it again.

This file is a convenience, converting from the unicode character database Blocks.txt file
to a format that is more convenient for manipulation within lua.  
First, it is a lua table.
Second, the planeNumber field, and a block number within that plane have been calculated.
The BlockNumber is purely sequential based on the in order traversal of the file, and 
resetting to 0 when crossing across planes.  As new blocks can be introduced, this is not
to be taken as an immutable field, but merely informational.

These might be used in other places to build up a rapid character lookup table.
--]]


]=])

local planeNumber
local blockNumber = -1;

io.write("local blocks = {\n")
for line in io.lines(arg[1]) do 
    -- ignore comment lines
    if not line:find("#") and line ~= "" then
        -- split line into fields based on semi-colon
        -- change this to capture
        local t = tsplit(line, '; ')
        
        -- ignore lines that don't have ';'
        if t then
            -- ranges look like '0100..010f'
            -- so capture low and high at ends of '..'

            local low, high = t[1]:match("([0-9,a-f,A-F]+)%.%.([0-9,a-f,A-F]+)")

            if low and high then
                local low = tonumber(low,16)
                local high = tonumber(high,16)
                local blockSize = high - low;
                local pNumber = getPlaneNumber(low)

                if pNumber ~= planeNumber then
                    planeNumber = pNumber;
                    blockNumber = 0;
                else
                    blockNumber = blockNumber + 1;
                end

                io.write(string.format('{low = 0x%04x, high = 0x%04x, blockNumber = %d, blockSize = 0x%x, planeNumber = %d, description = "%s"};\n',
                    low, high, blockNumber, blockSize, planeNumber, t[2]));
            end
        end
    end
end
io.write("};\n")
io.write("\nreturn blocks;\n")