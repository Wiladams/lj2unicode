local stringutil = require("stringutil")
local split = stringutil.split
local tsplit = stringutil.tsplit

--[[
    Fields

    001D;<control>;Cc;0;B;;;;;N;INFORMATION SEPARATOR THREE;;;;

-- semi-colon separated
1) CodePoint - 4-6 digit hex
2) Name
3) General_Category
4) Canonical_Combining_Class
5) Bidi_class
6) Decomposition_Type(Decomposition_Mapping)
7) NumericType(Numeric_Value)
8) Numeric_Value_1
9) Numeric_Value_2
10) Bidi_Mirrored
11) Unicode_1_Name(obsolete)
12) ISO_Comment (obsolete, deprecated)
13) Simple_Uppercase_Mapping
14) Simple_Lowercase_Mapping
15) Simple_Titlecase_Mapping

--]]


-- These are are to be used as the field names
local fieldNames = {
    {name = "codepoint", abbr = "cp"},
    {name = "name", abbr = "nm"},
    {name = "generalCategory", abbr = "gc"},
    {name = "canonicalCombiningClass", abbr = "comboClass"},
    {name = "bidiClass", abbr = "bdClass"},
    {name = "decompositionType", abbr = "decompType"},
    {name = "numericType", abbr = "nmType"},
    {name = "numericValue1", abbr = "nmValue1"},
    {name = "numericValue2", abbr = "nmValue2"},
    {name = "bidiMirrored", abbr = "bdMirror"},
    {name = "unicode1Name", abbr = "uc1Name"},
    {name = "isoComment", abbr = "iso"},
    {name = "simpleUppercaseMapping", abbr = "sUCMap"},
    {name = "simpleLowercaseMapping", abbr = "sLCMap"},
    {name = "simpleTitlecaseMapping", abbr = "sTCMap"},
}

print("local unicodeData = {")
for line in io.lines(arg[1]) do 
    -- split line into fields based on semi-colon
    local t = tsplit(line, ';')

    -- construct a table entry based on the fields that are not blank
    --local entry = {}
    io.write(string.format("    [0x%04X] = {", tonumber(t[1],16)))
    for i=1,#fieldNames do
        if t[i] ~= '' then
            if i == 1 then
                io.write(string.format("%s = 0x%X", fieldNames[i].abbr, tonumber(t[i],16)))
            else
                io.write(string.format(", %s = '%s'", fieldNames[i].abbr, t[i]))
            end
        end
    end
    io.write("};\n")

    --print(#t)
end
print("};")
