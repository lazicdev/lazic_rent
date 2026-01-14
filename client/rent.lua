ESX = exports["es_extended"]:getSharedObject()

for locationName, location in pairs(Config.Locations) do
    exports['qtarget']:AddBoxZone(locationName.."Rent", location.RentCoords, 3.4, 3.4, {
        name = locationName.."Rent",
        heading = location.RentHeading,
        debugPoly = false,
        minZ = location.RentMinz,
        maxZ = location.RentMaxz
    }, {
        options = {
            {
                event = "rent:openMenu",
                icon = "fas fa-circle",
                label = "Rent A Car",
                location = locationName
            },
        },
        job = {"all"},
        distance = 2.0
    })
end

RegisterNetEvent("rent:openMenu")
AddEventHandler("rent:openMenu", function(data)
    local locationName = data.location
    local options = {}
    
    for i, vozilo in ipairs(Config.Vozila) do
        table.insert(options, {
            title = vozilo.label,
            description = "$" .. vozilo.cena,
            icon = vozilo.icon,
            image = vozilo.image,
            event = "rent:zapocniRent",
            args = {
                location = locationName,
                vehicleIndex = i
            }
        })
    end
    
    lib.registerContext({
        id = 'rent-menu-' .. locationName,
        title = 'Rent A Car - ' .. locationName,
        options = options
    })
    
    lib.showContext('rent-menu-' .. locationName)
end)

RegisterNetEvent("rent:zapocniRent")
AddEventHandler("rent:zapocniRent", function(data)
    local locationName = data.location
    local vehicleIndex = data.vehicleIndex
    TriggerServerEvent('rent:naplati', locationName, vehicleIndex)
end)

RegisterNetEvent('rent:spawnVehicle')
AddEventHandler('rent:spawnVehicle', function(locationName, vehicleModel)
    local location = Config.Locations[locationName]
    local coords = location.SpawnCoords
    local heading = location.SpawnHeading
    
    if ESX.Game.IsSpawnPointClear(coords, Config.SpawnCheckRadius) then
        ESX.Game.SpawnVehicle(vehicleModel, coords, heading, function(vehicle)
            SetVehicleNumberPlateText(vehicle, Config.RentLicensePlate)
        end)
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

local blips = {}
for locationName, location in pairs(Config.Locations) do
    table.insert(blips, location.Blip)
end

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        local blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(blip, info.id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.75)
        SetBlipColour(blip, info.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(blip)
    end
end)

CreateThread(function()
    for _,v in pairs(Config.Pedovi) do
        RequestModel(GetHashKey(v[5]))
        while not HasModelLoaded(GetHashKey(v[5])) do
            Wait(1)
        end
        
        RequestAnimDict("mini@strip_club@idles@bouncer@base")
        while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
            Wait(1)
        end
        
        local ped = CreatePed(4, v[5], v[1], v[2], v[3] - 1.0, v[4], false, true)
        SetEntityHeading(ped, v[4])
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped, "mini@strip_club@idles@bouncer@base", "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)
