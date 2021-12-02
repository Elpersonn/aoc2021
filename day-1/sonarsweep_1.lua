function split (inputstr, sep)
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, tonumber(str))
        end
        return t
end

local tbl = split(io.read("*all"), "\n")
local bigger = 0
for i = 2, #tbl do
    if tbl[i] > tbl[i - 1] then
       bigger = bigger + 1
    end

end
print(bigger)
