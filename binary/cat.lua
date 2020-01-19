local args = {...}
if args[1] then
    local path = ((shell and shell.dir()) or "") .. args[1]
    if fs.isDir(path) then
        error("Path is a directory", 2)
    end
    if fs.exists(path) then
        local f = fs.open(path, "r")
        print(f.readAll())
        f.close()
        return
    else
        error("File not found", 2)
    end
else
    while true do
        print(read())
    end
end