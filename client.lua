local blackMarketPed
local blip
MainMenu = {}

CreateThread(function()
    local coords = lib.callback.await('neko_blackmarket:server:getPedLocation', false)
    print(coords)

    if Config.blip.show then
        blip = AddBlipForCoord(coords)
        SetBlipSprite(blip, Config.Blip.sprite)
        SetBlipDisplay(blip, Config.Blip.display)
        SetBlipScale(blip, Config.Blip.scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.Blip.colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.name)
        EndTextCommandSetBlipName(blip)
    end

    if not DoesEntityExist(blackMarketPed) then
        RequestModel(GetHashKey(Config.ped.model))
        while not HasModelLoaded(GetHashKey(Config.ped.model)) do
            Wait(1)
        end
    
        blackMarketPed = CreatePed(1, Config.ped.hash, coords, false, true)
        FreezeEntityPosition(blackMarketPed, true)
        SetEntityInvincible(blackMarketPed, true)
        SetBlockingOfNonTemporaryEvents(blackMarketPed, true)
    end

    exports['qb-target']:AddTargetEntity(blackMarketPed, {
        options = {
            { type  = "client", event = "neko_blackmarket:client:OpenMenu", label = Config.MainMenu.label, icon  = Config.MainMenu.icon }
        },
        distance = 1.5
    })

    MainMenu = {
        id    = 'neko_blackmarket_mainMenu',
        title = Config.Header.label,
        options = {}
    }

    for key, value in pairs(Config.Categories) do
        table.insert(MainMenu.options, {
            title = value.label,
            icon  = value.icon,
            event = 'neko_blackmarket:client:Open_'..key
        })

        RegisterNetEvent('neko_blackmarket:client:Open_'..key, function()
            exports.ox_inventory:openInventory( 'shop', { type = 'neko_blackmarket_'..key, id = 1 })
        end)
    end

    lib.registerContext(MainMenu)
end)

RegisterNetEvent('neko_blackmarket:client:OpenMenu', function()
    lib.showContext(MainMenu.id)
end)

local function RemovePed()
    if DoesEntityExist(blackMarketPed) then
        DeletePed(blackMarketPed)
    end
end

local function RemoveBlipMarker()
    if DoesBlipExist(blip) then
        RemoveBlip(blip)
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        RemovePed()
        RemoveBlipMarker()
    end
end)