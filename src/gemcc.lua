local proxyAddress = "https://portal.mozz.us/gemini/"
local proxySuffix = "/?raw=1"

local args = { ... }
local address = "gemini.circumlunar.space"

if args[1] then
    address = args[1]
end


local function getAddress()
    local address = proxyAddress .. address .. proxySuffix
    return address
end

local function getPage()
    local address = getAddress()
    local response = http.get(address)
    if response then
        return response.readAll()
    end
end

print(getPage())

local function keyLoop()
    local event, key, is_held = os.pullEvent("key")
    if key == keys.q then
        return
    elseif key == keys.e then
        
    end
end