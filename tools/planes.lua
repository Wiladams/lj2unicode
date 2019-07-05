--[[
    raw data for unicode planes

    Taken from documentation and wikipedia

]]
local planes = {
    {ordinal = 0, planeNumber = 0, low=0, high=0xffff, abbr='bmp', description = "Basic Multilingual Plane"};
    {ordinal = 1, planeNumber = 1, low=0x10000, high=0x1ffff, abbr='smp', description = "Supplementary Multilingual Plane"};
    {ordinal = 2, planeNumber = 2, low=0x20000, high=0x2ffff, abbr='sip', description = "Supplementary Ideographic Plane"};
    {ordinal = 3, planeNumber = 3, low=0x30000, high=0x3ffff, abbr='tip', description = "Tertiary Ideographic Plane"};
    {ordinal = 4, low=0x40000, high=0xdffff,  description = "planes 3 - 13", unassigned=true};
    {ordinal = 5, planeNumber = 14, low=0xE0000, high=0xEffff, abbr='ssp', description = "Supplementary special-purpose Plane"};
    {ordinal = 6, planeNumber = 15, low=0xF0000, high=0xFffff, abbr='spuaa', description = "Supplementary private use area A"};
    {ordinal = 7, planeNumber = 16, low=0x100000, high=0x10ffff, abbr='spuab', description = "Supplementary private use area B"};
}

return planes
