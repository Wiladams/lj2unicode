Herein lie routines to deal with unicode.  Primarily conversions from various
unicode data tables to forms that are more useable in a programming setting.

Data files in 'ucdsource' directory are taken straight from the unicode org, as
of version 12.1


slnunicode - is purely for inspiration  No code is taken from there directly
http://files.luaforge.net/releases/sln/slnunicode

References
https://www.unicode.org/reports/tr44/tr44-24.html

Some tables



First order of business, convert the UnicodeData.txt file into a lua table so we can get to manipulating things.

luajit conv_unicodedata.lua ..\ucdsource\UnicodeData.txt > unicodedata.lua

From here it's probably useful to take the unicodedata.lua table and start adding additional 
information to each character, such as the plane and page, so that a simple codepoint display
could be created.

Lastly, in order to do shaping of text, we want to create a very short form of lookup that allows
us to use the category information to determine how to advance based on the category
