function split (inputstr, sep)
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, tonumber(str))
        end
        return t
end
local tbl = split(io.read("*all"), "\n")
local bigger = 0
for i,v in ipairs(tbl) do
    if tbl[i+1] and tbl[i+2] and tbl[i+3] and tbl[i+1] + tbl[i+2] + tbl[i+3] >  v + tbl[i+1] + tbl[i+2] then
       bigger = bigger + 1
    end
end
print(bigger)
