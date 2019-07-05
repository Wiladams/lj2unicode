--[[
-- Taken from documentation (unicode, wikipedia)
-- if representing character attributes using 32-bit
-- we can use 8 bits to represent the plane/block
-- A codepoint's plane can be calculated, the block can not

 plane     block
7 6 5 4   3 2 1 0
x x x x | x x x x
--]]

local bit = require("bit")
local lshift, rshift = bit.lshift, bit.rshift
local bor, band = bit.bor, bit.band

local planes = require("tools.planes")

-- a little bit of an object to tie some functionality
-- to a unicode plane.
local UnicodePlane = {}
setmetatable(UnicodePlane, {
    __call = function(self, ...)
        return self:new(...)
    end;
})
local UnicodePlane_mt = {
    __index = UnicodePlane
}

function UnicodePlane.new(self, obj)
    if not obj then return nil, "must specify object fields" end

    setmetatable(obj, UnicodePlane_mt)
    return obj
end

-- A little database of current planes
local knownPlanes = {
    UnicodePlane ({ordinal = 0, planeNumber = 0, low=0, high=0xffff, abbr='bmp', description = "Basic Multilingual Plane"});
    UnicodePlane ({ordinal = 1, planeNumber = 1, low=0x10000, high=0x1ffff, abbr='smp', description = "Supplementary Multilingual Plane"});
    UnicodePlane ({ordinal = 2, planeNumber = 2, low=0x20000, high=0x2ffff, abbr='sip', description = "Supplementary Ideographic Plane"});
    UnicodePlane ({ordinal = 3, planeNumber = 3, low=0x30000, high=0x3ffff, abbr='tip', description = "Tertiary Ideographic Plane"});
    UnicodePlane ({ordinal = 4, low=0x40000, high=0xdffff,  description = "planes 3 - 13", unassigned=true});
    UnicodePlane ({ordinal = 5, planeNumber = 14, low=0xE0000, high=0xEffff, abbr='ssp', description = "Supplementary special-purpose Plane"});
    UnicodePlane ({ordinal = 6, planeNumber = 15, low=0xF0000, high=0xFffff, abbr='spuaa', description = "Supplementary private use area A"});
    UnicodePlane ({ordinal = 7, planeNumber = 16, low=0x100000, high=0x10ffff, abbr='spuab', description = "Supplementary private use area B"});
}

--[[
    Class enumerator for known unicode planes

    for plane in UnicodePlane:enumPlanes() do
        print(plane.abbr)
    end
]]
function UnicodePlane.assignedPlanes(self)

    local function visitor()
        for _, plane in ipairs(planes) do
            if not plane.unassigned then
                coroutine.yield(UnicodePlane(plane))
            end
        end
    end

    return coroutine.wrap(visitor)
end

-- Return the plane number for a codePoint
-- this does not check the validity of the range
function UnicodePlane.getPlaneNumber(self, codePoint)
    local planeNumber = rshift(codePoint, 16)
    if planeNumber < 0 or planeNumber > 16 then
        return false, "out of range"
    end

    return planeNumber
end

-- Return the UnicodePlane that matches the codepoint
-- this could be done simply by shifting right by 16 bits
-- and getting the plane number, then lookup the UnicodePlane
-- object from there.  But, be wasteful for now
function UnicodePlane.getPlane(self, codePoint)
    for plane in self:assignedPlanes() do
        if plane:contains(codePoint) then
            return plane;
        end
    end

    return nil, "plane not found"
end

--[[
    Instance methods
]]
-- Return true of the codepoint falls within the plane
function UnicodePlane.contains(self, codePoint)
    return codePoint >= self.low and codePoint <= self.high;
end





return UnicodePlane