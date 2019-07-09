package.path = "../?.lua;"..package.path

local cpprops = require("tools.cpproperties")
local getCodepointIndex = cpprops.getCodepointIndex;

print("0: ", getCodepointIndex(0))
print("2: ", getCodepointIndex(2))
print("0x241a: ", getCodepointIndex(0x241a))

print("0xe01c9: ", getCodepointIndex(0xe01c9))
print("0x100000: ", getCodepointIndex(0x100000))

print("0x10fffd: ", getCodepointIndex(0x10fffd))