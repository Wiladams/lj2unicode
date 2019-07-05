--[[
    Represents a unicode block
    Can do simple things like tell you whether the 
    block contains a particular character, and if so,
    which plane it belongs to, as well as the name of the block
]]
local blocks = require("blocks")

local UnicodeBlock = {}
setmetatable(UnicodeBlock, {
    __call = function(self, ...)
        return self:new(...)
    end;
})
local UnicodeBlock_mt = {
    __index = UnicodeBlock
}

function UnicodeBlock.new(self, obj)
    if not obj then return nil, "must specify parameters" end
    setmetatable(obj, UnicodeBlock_mt)

    return obj;
end

function UnicodeBlock.assignedBlocks(self)
    local function visitor()
        for _, block in ipairs(blocks) do
            return coroutine.yield(UnicodeBlock(block))
        end
    end

    return coroutine.wrap(visitor)
end

function UnicodeBlock.enumBlocksForPlane(self, planeNumber)
    local function visitor()
        for _, block in ipairs(blocks) do
            if block.planeNumber == planeNumber then
                coroutine.yield(UnicodeBlock(block))
            end
        end

        return nil
    end


    return coroutine.wrap(visitor)
end

function UnicodeBlock.lookupCodePoint(self, codePoint)
    -- traverse all known blocks, looking for the one
    for block in self:assignedBlocks() do
        if block:contains(codePoint) then
            return block;
        end
    end

    return nil, "block not found for codepoint"
end

--[[
    Instance methods
]]
function UnicodeBlock.contains(self, codePoint)
    return codePoint >= self.low and codePoint <= self.high;
end

return UnicodeBlock;
