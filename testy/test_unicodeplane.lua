package.path = "../?.lua;"..package.path

local UnicodePlane = require("tools.UnicodePlane")

for plane in UnicodePlane:assignedPlanes() do
    print(plane.planeNumber, plane.abbr, plane.description)
end

