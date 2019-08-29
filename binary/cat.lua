local path = ...
if fs.exists(path) and not fs.isDir(path) then
    local f = fs.open(path, "r")
    local content = f.readAll()
    f.close()
    print(content)
else
    error("path must exists and not be a directory")
end 
