local ox_inventory = exports.ox_inventory
local coords = nil

CreateThread(function()
    coords = Config.Locations[math.random(#Config.Locations)]
end)

lib.callback.register('neko_blackmarket:server:getPedLocation', function()
    return coords
end)

function GetPedCoords()
    return coords
end

for key, value in pairs(Config.Categories) do
    ox_inventory:RegisterShop('neko_blackmarket_'..key, {
        name = 'Mercado de '..value.label,
        inventory = value.items
    })
end
