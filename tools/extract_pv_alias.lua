local bits = require("bit")
local rshift, lshift = bit.rshift, bit.lshift

local stringutil = require("stringutil")
local split = stringutil.split
local tsplit = stringutil.tsplit
local trim = stringutil.trim
local spairs = require("spairs")

local function getTableNames(filename)
    local names = {}

    for line in io.lines(filename) do
        local fullname, key = line:match("#%s([%w,%_]+)%s%(([%w]+)%)")
        if fullname and key then
            names[key] = fullname
        end
    end

    return names
end

-- Extract a named set of values with keyname
local function extractOneKey(filename, keyname)
    if not keyname then return nil end

    local lines = {}

    -- find beginning of table
    -- start of data line looks like
    --     local str = "# ASCII_Hex_Digit (AHex)"
    for line in io.lines(filename) do
        if not haveHeading then
            local fullname, key = line:match("#%s([%w,%_]+)%s%(([%w]+)%)")
            if fullname and key and (key == keyname) then
                haveHeading = true;
                print(string.format("%s = { name = '%s',", key, fullname))
                print("    values = {")
            end
        else
            if not inTable then
                -- read one blank line
                assert(line == "")
                inTable = true
            elseif line == "" then
                -- end of values in table
                print("    };")

                -- end of table
                print("};")
                break
            else
                local t = tsplit(line,';')
                local keyfield = trim(t[2])
                local valuefield = trim(t[3])
                if tonumber(keyfield) then
                    print(string.format("        [%s] = {value = '%s'};", keyfield, valuefield))
                else
                    print(string.format("        %s = {value = '%s'};", keyfield, valuefield))
                end
            end
        end
    end
end

local function testTableNames()
    for key, value in spairs(getTableNames(arg[1])) do
        print(key,value)
    end
end


--extractOneKey(arg[1], arg[2])
testTableNames()