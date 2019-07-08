package.path = "../?.lua;"..package.path

local utils = require("tools.utils")
local parseRange = utils.parseRange

print(parseRange("001..002"))
print(parseRange("123..456",10))
