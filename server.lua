local ox_inventory = exports.ox_inventory

lib.callback.register('neko_blackmarket:server:getPedLocation', function(source, cb)
    return Config.Locations[math.random(#Config.Locations)]
end)

for key, value in pairs(Config.Categories) do
    ox_inventory:RegisterShop('neko_blackmarket_'..key, {
        name = 'Mercado de '..value.label,
        inventory = value.items
    })
end