--[[
This is the meaning of the generalCategory field of the unicode data table
This is probably the most useful in determining how a character is to be used when
rendering graphemes.  This table, combined with the codepoint data, can be used to construct
a simple table mapping codepoint to category using an enum or some such.
--]]

local GeneralCategory = {
    Lu = {value = 'Uppercase_Letter', ordinal = 1, description = "an uppercase letter"};
    Ll = {value = 'Lowercase_Letter', ordinal = 2, description = "an uppercase letter"};
    Lt = {value = 'Titlecase_Letter', ordinal = 3, description = "a digraphic character, with first part uppercase"};
    LC = {value = 'Cased_Letter', ordinal = 4, description = "Lu | Ll | Lt"};
    Lm = {value = 'Modifier_Letter', ordinal = 5, description = "a modifier letter"};
    Lo = {value = 'Other_Letter', ordinal = 6, description = "other letters, including syllables and ideographs"};
    L = {value = 'Letter', ordinal = 7, description = "Lu | Ll | Lt | Lm | Lo"};
    Mn = {value = 'Nonspacing_Mark', ordinal = 8, description = "an uppercase letter"};
    Mc = {value = 'Spacing_Mark', ordinal = 9, description = "an uppercase letter"};
    Me = {value = 'Enclosing_Mark', ordinal = 10, description = "an uppercase letter"};
    M = {value = 'Mark', ordinal = 11, description = "an uppercase letter"};
    Nd = {value = 'Decimal_Number', ordinal = 12, description = "an uppercase letter"};
    Nl = {value = 'Letter_Number', ordinal = 13, description = "an uppercase letter"};
    No = {value = 'Other_Number', ordinal = 14, description = "an uppercase letter"};
    N = {value = 'Number', ordinal = 15, description = "an uppercase letter"};
    Pc = {value = 'Connector_Punctuation', ordinal = 16, description = "an uppercase letter"};
    Pd = {value = 'Dash_Punctuation', ordinal = 17, description = "an uppercase letter"};
    Ps = {value = 'Start_Punctuation', ordinal = 18, description = "an uppercase letter"};
    Pe = {value = 'Close_Punctuation', ordinal = 19, description = "an uppercase letter"};
    Pi = {value = 'Initial_Punctuation', ordinal = 20, description = "an uppercase letter"};
    Pf = {value = 'Final_Punctuation', ordinal = 21, description = "an uppercase letter"};
    Po = {value = 'Other_Punctuation', ordinal = 22, description = "an uppercase letter"};
    P = {value = 'Punctuation', ordinal = 23, description = "an uppercase letter"};
    Sm = {value = 'Math_Symbol', ordinal = 24, description = "an uppercase letter"};
    Sc = {value = 'Currency_Symbol', ordinal = 25, description = "an uppercase letter"};
    Sk = {value = 'Modifier_Symbol', ordinal = 26, description = "an uppercase letter"};
    So = {value = 'Other_Symbol', ordinal = 27, description = "an uppercase letter"};
    S = {value = 'Symbol', ordinal = 28, description = "an uppercase letter"};
    Zs = {value = 'Space_Separator', ordinal = 29, description = "an uppercase letter"};
    Zl = {value = 'Line_Separator', ordinal = 30, description = "an uppercase letter"};
    Zp = {value = 'Paragraph_Separator', ordinal = 31, description = "an uppercase letter"};
    Z = {value = 'Separator', ordinal = 32, description = "an uppercase letter"};
    Cc = {value = 'Control', ordinal = 33, description = "an uppercase letter"};
    Cf = {value = 'Format', ordinal = 34, description = "an uppercase letter"};
    Cs = {value = 'Surrogate', ordinal = 35, description = "an uppercase letter"};
    Co = {value = 'Private_Use', ordinal = 36, description = "an uppercase letter"};
    Cn = {value = 'Unassigned', ordinal = 37, description = "an uppercase letter"};
    C = {value = 'Other', ordinal = 38, description = "an uppercase letter"};
}

return GeneralCategory