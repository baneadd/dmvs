local function ejecutar(url)
    local ok, resultado = pcall(function()
        local codigo = game:HttpGet(url)
        local funcion = loadstring(codigo)

        assert(funcion, "No se pudo compilar el código")
        funcion()
    end)

    if not ok then
        warn("Error al ejecutar " .. url .. ": " .. tostring(resultado))
    end
end

ejecutar("https://botthepan.onrender.com/script/1914a5cfb772c8a8")
ejecutar("https://pastebin.com/raw/LNREEVeF")
