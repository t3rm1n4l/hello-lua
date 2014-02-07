#!/usr/bin/env lua

function fact (n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

print("n:")
n = io.read("*num")
print(fact(n))
