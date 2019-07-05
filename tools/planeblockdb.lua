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

return {
bmp = {planeNumber = 0,  description = "Basic Multilingual Plane",
    blocks = {
      [0] = {low = 0x0000, high = 0x007f, description = "Basic Latin"};
      [1] = {low = 0x0080, high = 0x00ff, description = "Latin-1 Supplement"};
      [2] = {low = 0x0100, high = 0x017f, description = "Latin Extended-A"};
      [3] = {low = 0x0180, high = 0x024f, description = "Latin Extended-B"};
      [4] = {low = 0x0250, high = 0x02af, description = "IPA Extensions"};
      [5] = {low = 0x02b0, high = 0x02ff, description = "Spacing Modifier Letters"};
      [6] = {low = 0x0300, high = 0x036f, description = "Combining Diacritical Marks"};
      [7] = {low = 0x0370, high = 0x03ff, description = "Greek and Coptic"};
      [8] = {low = 0x0400, high = 0x04ff, description = "Cyrillic"};
      [9] = {low = 0x0500, high = 0x052f, description = "Cyrillic Supplement"};
      [10] = {low = 0x0530, high = 0x058f, description = "Armenian"};
      [11] = {low = 0x0590, high = 0x05ff, description = "Hebrew"};
      [12] = {low = 0x0600, high = 0x06ff, description = "Arabic"};
      [13] = {low = 0x0700, high = 0x074f, description = "Syriac"};
      [14] = {low = 0x0750, high = 0x077f, description = "Arabic Supplement"};
      [15] = {low = 0x0780, high = 0x07bf, description = "Thaana"};
      [16] = {low = 0x07c0, high = 0x07ff, description = "NKo"};
      [17] = {low = 0x0800, high = 0x083f, description = "Samaritan"};
      [18] = {low = 0x0840, high = 0x085f, description = "Mandaic"};
      [19] = {low = 0x0860, high = 0x086f, description = "Syriac Supplement"};
      [20] = {low = 0x08a0, high = 0x08ff, description = "Arabic Extended-A"};
      [21] = {low = 0x0900, high = 0x097f, description = "Devanagari"};
      [22] = {low = 0x0980, high = 0x09ff, description = "Bengali"};
      [23] = {low = 0x0a00, high = 0x0a7f, description = "Gurmukhi"};
      [24] = {low = 0x0a80, high = 0x0aff, description = "Gujarati"};
      [25] = {low = 0x0b00, high = 0x0b7f, description = "Oriya"};
      [26] = {low = 0x0b80, high = 0x0bff, description = "Tamil"};
      [27] = {low = 0x0c00, high = 0x0c7f, description = "Telugu"};
      [28] = {low = 0x0c80, high = 0x0cff, description = "Kannada"};
      [29] = {low = 0x0d00, high = 0x0d7f, description = "Malayalam"};
      [30] = {low = 0x0d80, high = 0x0dff, description = "Sinhala"};
      [31] = {low = 0x0e00, high = 0x0e7f, description = "Thai"};
      [32] = {low = 0x0e80, high = 0x0eff, description = "Lao"};
      [33] = {low = 0x0f00, high = 0x0fff, description = "Tibetan"};
      [34] = {low = 0x1000, high = 0x109f, description = "Myanmar"};
      [35] = {low = 0x10a0, high = 0x10ff, description = "Georgian"};
      [36] = {low = 0x1100, high = 0x11ff, description = "Hangul Jamo"};
      [37] = {low = 0x1200, high = 0x137f, description = "Ethiopic"};
      [38] = {low = 0x1380, high = 0x139f, description = "Ethiopic Supplement"};
      [39] = {low = 0x13a0, high = 0x13ff, description = "Cherokee"};
      [40] = {low = 0x1400, high = 0x167f, description = "Unified Canadian Aboriginal Syllabics"};
      [41] = {low = 0x1680, high = 0x169f, description = "Ogham"};
      [42] = {low = 0x16a0, high = 0x16ff, description = "Runic"};
      [43] = {low = 0x1700, high = 0x171f, description = "Tagalog"};
      [44] = {low = 0x1720, high = 0x173f, description = "Hanunoo"};
      [45] = {low = 0x1740, high = 0x175f, description = "Buhid"};
      [46] = {low = 0x1760, high = 0x177f, description = "Tagbanwa"};
      [47] = {low = 0x1780, high = 0x17ff, description = "Khmer"};
      [48] = {low = 0x1800, high = 0x18af, description = "Mongolian"};
      [49] = {low = 0x18b0, high = 0x18ff, description = "Unified Canadian Aboriginal Syllabics Extended"};
      [50] = {low = 0x1900, high = 0x194f, description = "Limbu"};
      [51] = {low = 0x1950, high = 0x197f, description = "Tai Le"};
      [52] = {low = 0x1980, high = 0x19df, description = "New Tai Lue"};
      [53] = {low = 0x19e0, high = 0x19ff, description = "Khmer Symbols"};
      [54] = {low = 0x1a00, high = 0x1a1f, description = "Buginese"};
      [55] = {low = 0x1a20, high = 0x1aaf, description = "Tai Tham"};
      [56] = {low = 0x1ab0, high = 0x1aff, description = "Combining Diacritical Marks Extended"};
      [57] = {low = 0x1b00, high = 0x1b7f, description = "Balinese"};
      [58] = {low = 0x1b80, high = 0x1bbf, description = "Sundanese"};
      [59] = {low = 0x1bc0, high = 0x1bff, description = "Batak"};
      [60] = {low = 0x1c00, high = 0x1c4f, description = "Lepcha"};
      [61] = {low = 0x1c50, high = 0x1c7f, description = "Ol Chiki"};
      [62] = {low = 0x1c80, high = 0x1c8f, description = "Cyrillic Extended-C"};
      [63] = {low = 0x1c90, high = 0x1cbf, description = "Georgian Extended"};
      [64] = {low = 0x1cc0, high = 0x1ccf, description = "Sundanese Supplement"};
      [65] = {low = 0x1cd0, high = 0x1cff, description = "Vedic Extensions"};
      [66] = {low = 0x1d00, high = 0x1d7f, description = "Phonetic Extensions"};
      [67] = {low = 0x1d80, high = 0x1dbf, description = "Phonetic Extensions Supplement"};
      [68] = {low = 0x1dc0, high = 0x1dff, description = "Combining Diacritical Marks Supplement"};
      [69] = {low = 0x1e00, high = 0x1eff, description = "Latin Extended Additional"};
      [70] = {low = 0x1f00, high = 0x1fff, description = "Greek Extended"};
      [71] = {low = 0x2000, high = 0x206f, description = "General Punctuation"};
      [72] = {low = 0x2070, high = 0x209f, description = "Superscripts and Subscripts"};
      [73] = {low = 0x20a0, high = 0x20cf, description = "Currency Symbols"};
      [74] = {low = 0x20d0, high = 0x20ff, description = "Combining Diacritical Marks for Symbols"};
      [75] = {low = 0x2100, high = 0x214f, description = "Letterlike Symbols"};
      [76] = {low = 0x2150, high = 0x218f, description = "Number Forms"};
      [77] = {low = 0x2190, high = 0x21ff, description = "Arrows"};
      [78] = {low = 0x2200, high = 0x22ff, description = "Mathematical Operators"};
      [79] = {low = 0x2300, high = 0x23ff, description = "Miscellaneous Technical"};
      [80] = {low = 0x2400, high = 0x243f, description = "Control Pictures"};
      [81] = {low = 0x2440, high = 0x245f, description = "Optical Character Recognition"};
      [82] = {low = 0x2460, high = 0x24ff, description = "Enclosed Alphanumerics"};
      [83] = {low = 0x2500, high = 0x257f, description = "Box Drawing"};
      [84] = {low = 0x2580, high = 0x259f, description = "Block Elements"};
      [85] = {low = 0x25a0, high = 0x25ff, description = "Geometric Shapes"};
      [86] = {low = 0x2600, high = 0x26ff, description = "Miscellaneous Symbols"};
      [87] = {low = 0x2700, high = 0x27bf, description = "Dingbats"};
      [88] = {low = 0x27c0, high = 0x27ef, description = "Miscellaneous Mathematical Symbols-A"};
      [89] = {low = 0x27f0, high = 0x27ff, description = "Supplemental Arrows-A"};
      [90] = {low = 0x2800, high = 0x28ff, description = "Braille Patterns"};
      [91] = {low = 0x2900, high = 0x297f, description = "Supplemental Arrows-B"};
      [92] = {low = 0x2980, high = 0x29ff, description = "Miscellaneous Mathematical Symbols-B"};
      [93] = {low = 0x2a00, high = 0x2aff, description = "Supplemental Mathematical Operators"};
      [94] = {low = 0x2b00, high = 0x2bff, description = "Miscellaneous Symbols and Arrows"};
      [95] = {low = 0x2c00, high = 0x2c5f, description = "Glagolitic"};
      [96] = {low = 0x2c60, high = 0x2c7f, description = "Latin Extended-C"};
      [97] = {low = 0x2c80, high = 0x2cff, description = "Coptic"};
      [98] = {low = 0x2d00, high = 0x2d2f, description = "Georgian Supplement"};
      [99] = {low = 0x2d30, high = 0x2d7f, description = "Tifinagh"};
      [100] = {low = 0x2d80, high = 0x2ddf, description = "Ethiopic Extended"};
      [101] = {low = 0x2de0, high = 0x2dff, description = "Cyrillic Extended-A"};
      [102] = {low = 0x2e00, high = 0x2e7f, description = "Supplemental Punctuation"};
      [103] = {low = 0x2e80, high = 0x2eff, description = "CJK Radicals Supplement"};
      [104] = {low = 0x2f00, high = 0x2fdf, description = "Kangxi Radicals"};
      [105] = {low = 0x2ff0, high = 0x2fff, description = "Ideographic Description Characters"};
      [106] = {low = 0x3000, high = 0x303f, description = "CJK Symbols and Punctuation"};
      [107] = {low = 0x3040, high = 0x309f, description = "Hiragana"};
      [108] = {low = 0x30a0, high = 0x30ff, description = "Katakana"};
      [109] = {low = 0x3100, high = 0x312f, description = "Bopomofo"};
      [110] = {low = 0x3130, high = 0x318f, description = "Hangul Compatibility Jamo"};
      [111] = {low = 0x3190, high = 0x319f, description = "Kanbun"};
      [112] = {low = 0x31a0, high = 0x31bf, description = "Bopomofo Extended"};
      [113] = {low = 0x31c0, high = 0x31ef, description = "CJK Strokes"};
      [114] = {low = 0x31f0, high = 0x31ff, description = "Katakana Phonetic Extensions"};
      [115] = {low = 0x3200, high = 0x32ff, description = "Enclosed CJK Letters and Months"};
      [116] = {low = 0x3300, high = 0x33ff, description = "CJK Compatibility"};
      [117] = {low = 0x3400, high = 0x4dbf, description = "CJK Unified Ideographs Extension A"};
      [118] = {low = 0x4dc0, high = 0x4dff, description = "Yijing Hexagram Symbols"};
      [119] = {low = 0x4e00, high = 0x9fff, description = "CJK Unified Ideographs"};
      [120] = {low = 0xa000, high = 0xa48f, description = "Yi Syllables"};
      [121] = {low = 0xa490, high = 0xa4cf, description = "Yi Radicals"};
      [122] = {low = 0xa4d0, high = 0xa4ff, description = "Lisu"};
      [123] = {low = 0xa500, high = 0xa63f, description = "Vai"};
      [124] = {low = 0xa640, high = 0xa69f, description = "Cyrillic Extended-B"};
      [125] = {low = 0xa6a0, high = 0xa6ff, description = "Bamum"};
      [126] = {low = 0xa700, high = 0xa71f, description = "Modifier Tone Letters"};
      [127] = {low = 0xa720, high = 0xa7ff, description = "Latin Extended-D"};
      [128] = {low = 0xa800, high = 0xa82f, description = "Syloti Nagri"};
      [129] = {low = 0xa830, high = 0xa83f, description = "Common Indic Number Forms"};
      [130] = {low = 0xa840, high = 0xa87f, description = "Phags-pa"};
      [131] = {low = 0xa880, high = 0xa8df, description = "Saurashtra"};
      [132] = {low = 0xa8e0, high = 0xa8ff, description = "Devanagari Extended"};
      [133] = {low = 0xa900, high = 0xa92f, description = "Kayah Li"};
      [134] = {low = 0xa930, high = 0xa95f, description = "Rejang"};
      [135] = {low = 0xa960, high = 0xa97f, description = "Hangul Jamo Extended-A"};
      [136] = {low = 0xa980, high = 0xa9df, description = "Javanese"};
      [137] = {low = 0xa9e0, high = 0xa9ff, description = "Myanmar Extended-B"};
      [138] = {low = 0xaa00, high = 0xaa5f, description = "Cham"};
      [139] = {low = 0xaa60, high = 0xaa7f, description = "Myanmar Extended-A"};
      [140] = {low = 0xaa80, high = 0xaadf, description = "Tai Viet"};
      [141] = {low = 0xaae0, high = 0xaaff, description = "Meetei Mayek Extensions"};
      [142] = {low = 0xab00, high = 0xab2f, description = "Ethiopic Extended-A"};
      [143] = {low = 0xab30, high = 0xab6f, description = "Latin Extended-E"};
      [144] = {low = 0xab70, high = 0xabbf, description = "Cherokee Supplement"};
      [145] = {low = 0xabc0, high = 0xabff, description = "Meetei Mayek"};
      [146] = {low = 0xac00, high = 0xd7af, description = "Hangul Syllables"};
      [147] = {low = 0xd7b0, high = 0xd7ff, description = "Hangul Jamo Extended-B"};
      [148] = {low = 0xd800, high = 0xdb7f, description = "High Surrogates"};
      [149] = {low = 0xdb80, high = 0xdbff, description = "High Private Use Surrogates"};
      [150] = {low = 0xdc00, high = 0xdfff, description = "Low Surrogates"};
      [151] = {low = 0xe000, high = 0xf8ff, description = "Private Use Area"};
      [152] = {low = 0xf900, high = 0xfaff, description = "CJK Compatibility Ideographs"};
      [153] = {low = 0xfb00, high = 0xfb4f, description = "Alphabetic Presentation Forms"};
      [154] = {low = 0xfb50, high = 0xfdff, description = "Arabic Presentation Forms-A"};
      [155] = {low = 0xfe00, high = 0xfe0f, description = "Variation Selectors"};
      [156] = {low = 0xfe10, high = 0xfe1f, description = "Vertical Forms"};
      [157] = {low = 0xfe20, high = 0xfe2f, description = "Combining Half Marks"};
      [158] = {low = 0xfe30, high = 0xfe4f, description = "CJK Compatibility Forms"};
      [159] = {low = 0xfe50, high = 0xfe6f, description = "Small Form Variants"};
      [160] = {low = 0xfe70, high = 0xfeff, description = "Arabic Presentation Forms-B"};
      [161] = {low = 0xff00, high = 0xffef, description = "Halfwidth and Fullwidth Forms"};
      [162] = {low = 0xfff0, high = 0xffff, description = "Specials"};
    };
};
smp = {planeNumber = 1,  description = "Supplementary Multilingual Plane",
    blocks = {
      [0] = {low = 0x10000, high = 0x1007f, description = "Linear B Syllabary"};
      [1] = {low = 0x10080, high = 0x100ff, description = "Linear B Ideograms"};
      [2] = {low = 0x10100, high = 0x1013f, description = "Aegean Numbers"};
      [3] = {low = 0x10140, high = 0x1018f, description = "Ancient Greek Numbers"};
      [4] = {low = 0x10190, high = 0x101cf, description = "Ancient Symbols"};
      [5] = {low = 0x101d0, high = 0x101ff, description = "Phaistos Disc"};
      [6] = {low = 0x10280, high = 0x1029f, description = "Lycian"};
      [7] = {low = 0x102a0, high = 0x102df, description = "Carian"};
      [8] = {low = 0x102e0, high = 0x102ff, description = "Coptic Epact Numbers"};
      [9] = {low = 0x10300, high = 0x1032f, description = "Old Italic"};
      [10] = {low = 0x10330, high = 0x1034f, description = "Gothic"};
      [11] = {low = 0x10350, high = 0x1037f, description = "Old Permic"};
      [12] = {low = 0x10380, high = 0x1039f, description = "Ugaritic"};
      [13] = {low = 0x103a0, high = 0x103df, description = "Old Persian"};
      [14] = {low = 0x10400, high = 0x1044f, description = "Deseret"};
      [15] = {low = 0x10450, high = 0x1047f, description = "Shavian"};
      [16] = {low = 0x10480, high = 0x104af, description = "Osmanya"};
      [17] = {low = 0x104b0, high = 0x104ff, description = "Osage"};
      [18] = {low = 0x10500, high = 0x1052f, description = "Elbasan"};
      [19] = {low = 0x10530, high = 0x1056f, description = "Caucasian Albanian"};
      [20] = {low = 0x10600, high = 0x1077f, description = "Linear A"};
      [21] = {low = 0x10800, high = 0x1083f, description = "Cypriot Syllabary"};
      [22] = {low = 0x10840, high = 0x1085f, description = "Imperial Aramaic"};
      [23] = {low = 0x10860, high = 0x1087f, description = "Palmyrene"};
      [24] = {low = 0x10880, high = 0x108af, description = "Nabataean"};
      [25] = {low = 0x108e0, high = 0x108ff, description = "Hatran"};
      [26] = {low = 0x10900, high = 0x1091f, description = "Phoenician"};
      [27] = {low = 0x10920, high = 0x1093f, description = "Lydian"};
      [28] = {low = 0x10980, high = 0x1099f, description = "Meroitic Hieroglyphs"};
      [29] = {low = 0x109a0, high = 0x109ff, description = "Meroitic Cursive"};
      [30] = {low = 0x10a00, high = 0x10a5f, description = "Kharoshthi"};
      [31] = {low = 0x10a60, high = 0x10a7f, description = "Old South Arabian"};
      [32] = {low = 0x10a80, high = 0x10a9f, description = "Old North Arabian"};
      [33] = {low = 0x10ac0, high = 0x10aff, description = "Manichaean"};
      [34] = {low = 0x10b00, high = 0x10b3f, description = "Avestan"};
      [35] = {low = 0x10b40, high = 0x10b5f, description = "Inscriptional Parthian"};
      [36] = {low = 0x10b60, high = 0x10b7f, description = "Inscriptional Pahlavi"};
      [37] = {low = 0x10b80, high = 0x10baf, description = "Psalter Pahlavi"};
      [38] = {low = 0x10c00, high = 0x10c4f, description = "Old Turkic"};
      [39] = {low = 0x10c80, high = 0x10cff, description = "Old Hungarian"};
      [40] = {low = 0x10d00, high = 0x10d3f, description = "Hanifi Rohingya"};
      [41] = {low = 0x10e60, high = 0x10e7f, description = "Rumi Numeral Symbols"};
      [42] = {low = 0x10f00, high = 0x10f2f, description = "Old Sogdian"};
      [43] = {low = 0x10f30, high = 0x10f6f, description = "Sogdian"};
      [44] = {low = 0x10fe0, high = 0x10fff, description = "Elymaic"};
      [45] = {low = 0x11000, high = 0x1107f, description = "Brahmi"};
      [46] = {low = 0x11080, high = 0x110cf, description = "Kaithi"};
      [47] = {low = 0x110d0, high = 0x110ff, description = "Sora Sompeng"};
      [48] = {low = 0x11100, high = 0x1114f, description = "Chakma"};
      [49] = {low = 0x11150, high = 0x1117f, description = "Mahajani"};
      [50] = {low = 0x11180, high = 0x111df, description = "Sharada"};
      [51] = {low = 0x111e0, high = 0x111ff, description = "Sinhala Archaic Numbers"};
      [52] = {low = 0x11200, high = 0x1124f, description = "Khojki"};
      [53] = {low = 0x11280, high = 0x112af, description = "Multani"};
      [54] = {low = 0x112b0, high = 0x112ff, description = "Khudawadi"};
      [55] = {low = 0x11300, high = 0x1137f, description = "Grantha"};
      [56] = {low = 0x11400, high = 0x1147f, description = "Newa"};
      [57] = {low = 0x11480, high = 0x114df, description = "Tirhuta"};
      [58] = {low = 0x11580, high = 0x115ff, description = "Siddham"};
      [59] = {low = 0x11600, high = 0x1165f, description = "Modi"};
      [60] = {low = 0x11660, high = 0x1167f, description = "Mongolian Supplement"};
      [61] = {low = 0x11680, high = 0x116cf, description = "Takri"};
      [62] = {low = 0x11700, high = 0x1173f, description = "Ahom"};
      [63] = {low = 0x11800, high = 0x1184f, description = "Dogra"};
      [64] = {low = 0x118a0, high = 0x118ff, description = "Warang Citi"};
      [65] = {low = 0x119a0, high = 0x119ff, description = "Nandinagari"};
      [66] = {low = 0x11a00, high = 0x11a4f, description = "Zanabazar Square"};
      [67] = {low = 0x11a50, high = 0x11aaf, description = "Soyombo"};
      [68] = {low = 0x11ac0, high = 0x11aff, description = "Pau Cin Hau"};
      [69] = {low = 0x11c00, high = 0x11c6f, description = "Bhaiksuki"};
      [70] = {low = 0x11c70, high = 0x11cbf, description = "Marchen"};
      [71] = {low = 0x11d00, high = 0x11d5f, description = "Masaram Gondi"};
      [72] = {low = 0x11d60, high = 0x11daf, description = "Gunjala Gondi"};
      [73] = {low = 0x11ee0, high = 0x11eff, description = "Makasar"};
      [74] = {low = 0x11fc0, high = 0x11fff, description = "Tamil Supplement"};
      [75] = {low = 0x12000, high = 0x123ff, description = "Cuneiform"};
      [76] = {low = 0x12400, high = 0x1247f, description = "Cuneiform Numbers and Punctuation"};
      [77] = {low = 0x12480, high = 0x1254f, description = "Early Dynastic Cuneiform"};
      [78] = {low = 0x13000, high = 0x1342f, description = "Egyptian Hieroglyphs"};
      [79] = {low = 0x13430, high = 0x1343f, description = "Egyptian Hieroglyph Format Controls"};
      [80] = {low = 0x14400, high = 0x1467f, description = "Anatolian Hieroglyphs"};
      [81] = {low = 0x16800, high = 0x16a3f, description = "Bamum Supplement"};
      [82] = {low = 0x16a40, high = 0x16a6f, description = "Mro"};
      [83] = {low = 0x16ad0, high = 0x16aff, description = "Bassa Vah"};
      [84] = {low = 0x16b00, high = 0x16b8f, description = "Pahawh Hmong"};
      [85] = {low = 0x16e40, high = 0x16e9f, description = "Medefaidrin"};
      [86] = {low = 0x16f00, high = 0x16f9f, description = "Miao"};
      [87] = {low = 0x16fe0, high = 0x16fff, description = "Ideographic Symbols and Punctuation"};
      [88] = {low = 0x17000, high = 0x187ff, description = "Tangut"};
      [89] = {low = 0x18800, high = 0x18aff, description = "Tangut Components"};
      [90] = {low = 0x1b000, high = 0x1b0ff, description = "Kana Supplement"};
      [91] = {low = 0x1b100, high = 0x1b12f, description = "Kana Extended-A"};
      [92] = {low = 0x1b130, high = 0x1b16f, description = "Small Kana Extension"};
      [93] = {low = 0x1b170, high = 0x1b2ff, description = "Nushu"};
      [94] = {low = 0x1bc00, high = 0x1bc9f, description = "Duployan"};
      [95] = {low = 0x1bca0, high = 0x1bcaf, description = "Shorthand Format Controls"};
      [96] = {low = 0x1d000, high = 0x1d0ff, description = "Byzantine Musical Symbols"};
      [97] = {low = 0x1d100, high = 0x1d1ff, description = "Musical Symbols"};
      [98] = {low = 0x1d200, high = 0x1d24f, description = "Ancient Greek Musical Notation"};
      [99] = {low = 0x1d2e0, high = 0x1d2ff, description = "Mayan Numerals"};
      [100] = {low = 0x1d300, high = 0x1d35f, description = "Tai Xuan Jing Symbols"};
      [101] = {low = 0x1d360, high = 0x1d37f, description = "Counting Rod Numerals"};
      [102] = {low = 0x1d400, high = 0x1d7ff, description = "Mathematical Alphanumeric Symbols"};
      [103] = {low = 0x1d800, high = 0x1daaf, description = "Sutton SignWriting"};
      [104] = {low = 0x1e000, high = 0x1e02f, description = "Glagolitic Supplement"};
      [105] = {low = 0x1e100, high = 0x1e14f, description = "Nyiakeng Puachue Hmong"};
      [106] = {low = 0x1e2c0, high = 0x1e2ff, description = "Wancho"};
      [107] = {low = 0x1e800, high = 0x1e8df, description = "Mende Kikakui"};
      [108] = {low = 0x1e900, high = 0x1e95f, description = "Adlam"};
      [109] = {low = 0x1ec70, high = 0x1ecbf, description = "Indic Siyaq Numbers"};
      [110] = {low = 0x1ed00, high = 0x1ed4f, description = "Ottoman Siyaq Numbers"};
      [111] = {low = 0x1ee00, high = 0x1eeff, description = "Arabic Mathematical Alphabetic Symbols"};
      [112] = {low = 0x1f000, high = 0x1f02f, description = "Mahjong Tiles"};
      [113] = {low = 0x1f030, high = 0x1f09f, description = "Domino Tiles"};
      [114] = {low = 0x1f0a0, high = 0x1f0ff, description = "Playing Cards"};
      [115] = {low = 0x1f100, high = 0x1f1ff, description = "Enclosed Alphanumeric Supplement"};
      [116] = {low = 0x1f200, high = 0x1f2ff, description = "Enclosed Ideographic Supplement"};
      [117] = {low = 0x1f300, high = 0x1f5ff, description = "Miscellaneous Symbols and Pictographs"};
      [118] = {low = 0x1f600, high = 0x1f64f, description = "Emoticons"};
      [119] = {low = 0x1f650, high = 0x1f67f, description = "Ornamental Dingbats"};
      [120] = {low = 0x1f680, high = 0x1f6ff, description = "Transport and Map Symbols"};
      [121] = {low = 0x1f700, high = 0x1f77f, description = "Alchemical Symbols"};
      [122] = {low = 0x1f780, high = 0x1f7ff, description = "Geometric Shapes Extended"};
      [123] = {low = 0x1f800, high = 0x1f8ff, description = "Supplemental Arrows-C"};
      [124] = {low = 0x1f900, high = 0x1f9ff, description = "Supplemental Symbols and Pictographs"};
      [125] = {low = 0x1fa00, high = 0x1fa6f, description = "Chess Symbols"};
      [126] = {low = 0x1fa70, high = 0x1faff, description = "Symbols and Pictographs Extended-A"};
    };
};
sip = {planeNumber = 2,  description = "Supplementary Ideographic Plane",
    blocks = {
      [0] = {low = 0x20000, high = 0x2a6df, description = "CJK Unified Ideographs Extension B"};
      [1] = {low = 0x2a700, high = 0x2b73f, description = "CJK Unified Ideographs Extension C"};
      [2] = {low = 0x2b740, high = 0x2b81f, description = "CJK Unified Ideographs Extension D"};
      [3] = {low = 0x2b820, high = 0x2ceaf, description = "CJK Unified Ideographs Extension E"};
      [4] = {low = 0x2ceb0, high = 0x2ebef, description = "CJK Unified Ideographs Extension F"};
      [5] = {low = 0x2f800, high = 0x2fa1f, description = "CJK Compatibility Ideographs Supplement"};
    };
};
tip = {planeNumber = 3,  description = "Tertiary Ideographic Plane",
    blocks = {
    };
};
ssp = {planeNumber = 14,  description = "Supplementary special-purpose Plane",
    blocks = {
      [0] = {low = 0xe0000, high = 0xe007f, description = "Tags"};
      [1] = {low = 0xe0100, high = 0xe01ef, description = "Variation Selectors Supplement"};
    };
};
spuaa = {planeNumber = 15,  description = "Supplementary private use area A",
    blocks = {
      [0] = {low = 0xf0000, high = 0xfffff, description = "Supplementary Private Use Area-A"};
    };
};
spuab = {planeNumber = 16,  description = "Supplementary private use area B",
    blocks = {
      [0] = {low = 0x100000, high = 0x10ffff, description = "Supplementary Private Use Area-B"};
    };
};
};
