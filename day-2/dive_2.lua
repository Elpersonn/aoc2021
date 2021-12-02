function split (inputstr, sep)
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end
local dict = {["up"] = -1, ["down"] = 1}
local tbl = split(io.read("*all"), "\n")
local x,y,aim  = 0, 0, 0
for i,v in pairs(tbl) do
  local cmd = split(v, "%s")
  if cmd[1] == "forward" then
    x = x + cmd[2]
    y = y + (cmd[2] * aim)
  else
    aim = aim + cmd[2] * dict[cmd[1]]
  end
end
print(x*y)
