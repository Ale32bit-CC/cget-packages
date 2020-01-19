local s = ...
s = tonumber(s)
if not s then
    error("argument must be a number", 2)
end

sleep(s)