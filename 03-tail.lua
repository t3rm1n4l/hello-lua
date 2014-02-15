#!/usr/bin/env lua

buffer = {}

if #arg == 1 then
    n = tonumber(arg[1])
    if n == nil then
        io.write(string.format("Usage: %s -n count\n", arg[0]))
        os.exit(1)
    end
end

i = 0
while true do
    local line = io.read()
    if not line then
        break
    end
    buffer[i % n] = line
    i = i + 1
end

for j = 0,n-1 do
    local pos = (j + i) % n
    if buffer[pos] then
        print(buffer[pos])
    end
end
