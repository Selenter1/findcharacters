--[[
    Developed by Selenter, 2021
    All rights reserved.

    This library adds 2 new functions that will find the number of large 
    and small characters and also display them together

    
    -- To work correctly, you need the ``utf8`` library from Kyle Smith (2006-2007)
]]--

local lowerCharacters = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя" .. "abcdefghijklmnopqrstuvwxyz"
local upperCharacters = "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ" .. "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
local lowerCharactersTable = {}
local upperCharactersTable = {}

do
	local len = string.utf8len(lowerCharacters)

	for i = 1, len do
		local charLower = string.utf8sub(lowerCharacters, i, i)
		local charUpper = string.utf8sub(upperCharacters, i, i)

		lowerCharactersTable[charLower] = true
		upperCharactersTable[charUpper] = true
	end
end

local function findLowerCharacters(str)
	local len = string.utf8len(str)

	local outStr = ""
	local count = 0

	for i = 1, len do
		local char = string.utf8sub(str, i, i)

		if lowerCharactersTable[char] then
			outStr = outStr .. char
			count = count + 1
		end
	end

	return outStr, count
end

local function findUpperCharacters(str)
	local len = string.utf8len(str)

	local outStr = ""
	local count = 0

	for i = 1, len do
		local char = string.utf8sub(str, i, i)

		if upperCharactersTable[char] then
			outStr = outStr .. char
			count = count + 1
		end
	end

	return outStr, count
end



string.findLowerCharacters      = findLowerCharacters
string.findUpperCharacters      = findUpperCharacters