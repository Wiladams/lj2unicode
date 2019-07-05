package.path = "../?.lua;"..package.path

local UnicodePlane = require("UnicodePlane")
local UnicodeBlock = require("UnicodeBlock")

io.write([=[
--[[
    Generated File
    luajit create_planeblockdb.lua > planeblockdb.lua

    It will take data from the planes.lua (UnicodePlane.lua), and 
    blocks.lua (UnicodeBlock.lua) files and turn it into a combined 
    table.

    This table is hierarchical, and indexed by the three letter
    name of the plane, then within a plane, the index of the block
    starting with index 0 as the first block within a plane.

    Note:
    This file is good for display purposes when you want to go through
    the planes, then the blocks.  Not good for general lookups based
    on character codepoint.
--]]

]=])
io.write('return {\n');

-- for each plane
for plane in UnicodePlane:assignedPlanes() do

    io.write(string.format('%s = {planeNumber = %d,  description = "%s",\n', 
        plane.abbr, plane.planeNumber, plane.description))
    -- now go through the blocks looking for the ones that match
    -- this plane and attach them to the plane obje

    io.write('    blocks = {\n')
    for block in UnicodeBlock:enumBlocksForPlane(plane.planeNumber) do
        io.write(string.format('      [%d] = {low = 0x%04x, high = 0x%04x, description = "%s"};\n', 
            block.blockNumber, block.low, block.high, block.description))
    end
    io.write('    };\n')
    io.write('};\n')
end

io.write('};\n')