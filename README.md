# Find Characters

A simple library that adds 2 new functions, namely:
```lua
-- This function is needed to search for SMALL characters in the text.
-- @str — String in which the search will take place.
-- Function returns 2 data:
--    1: String; (How the text will look with only small letters)
--    2: Integer; (Number of small letters)
string.findLowerCharacters(str)

-- This function is needed to search for LARGE characters in the text.
-- @str — String in which the search will take place.
-- Function returns 2 data:
--    1: String; (How the text will look with only large letters)
--    2: Integer; (Number of large letters)
string.findUpperCharacters(str)
```

Here are some examples of how these functions work:
```lua
local data = "Some KIND of random tyPING for an EXAMPLE!"

local lStr, lCount = string.findLowerCharacters(data)
--[[
    OUTPUT:
        omeofrandomtyforan      18
]]--

local uStr, uCount = string.findUpperCharacters(data)
--[[
    OUTPUT:
        SKINDPINGEXAMPLE        16
]]--

print(lStr, lCount)
print(uStr, uCount)
```
```lua
print(string.findLowerCharacters("TEST TEst"))
print(string.findUpperCharacters("test teST"))

--[[
    OUTPUT:
        st      2
        ST      2
]]--
```
