local s = ...
s = tonumber(s)
if not s then
    error("argument must number", 2)
end

sleep(s)
