ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('lazic:rentgrad1')
AddEventHandler('lazic:rentgrad1', function(source)
	local coords = Config.RentGradSpawnCoords
	local heading = Config.RentGradHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentGradVozilo1, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:rentgrad2')
AddEventHandler('lazic:rentgrad2', function(source)
	local coords = Config.RentGradSpawnCoords
	local heading = Config.RentGradHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentGradVozilo2, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:rentgrad3')
AddEventHandler('lazic:rentgrad3', function(source)
	local coords = Config.RentGradSpawnCoords
	local heading = Config.RentGradHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentGradVozilo3, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:povuciserverstranu1')
AddEventHandler('lazic:povuciserverstranu1', function()
    TriggerServerEvent('naplata:gradfuto')
end)

RegisterNetEvent('lazic:povuciserverstranu2')
AddEventHandler('lazic:povuciserverstranu2', function()
    TriggerServerEvent('naplata:gradsultan')
end)

RegisterNetEvent('lazic:povuciserverstranu3')
AddEventHandler('lazic:povuciserverstranu3', function()
    TriggerServerEvent('naplata:gradfaggio')
end)

exports['qtarget']:AddBoxZone("GradRent",vector3(110.51, -1090.61, 29.29), 3.4, 3.4, {
    name="GradRent",
    heading=127.55,
    debugPoly=false,
    minZ=29.29,
    maxZ=30.29
	}, 
  	{
    options = {
    {
		event = "aa",
		icon = "fas fa-circle",
		label = "Rent A Car",
    },
  	},
	job = {"all"},
    distance = 2.0
})

RegisterNetEvent("aa")
AddEventHandler("aa", function()
    lib.registerContext({
        id = 'rent-carnew',
        title = 'Rent A Car',
        options = {
            {
                title = 'Futo',
                description = "500$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456',
                event = "lazic:povuciserverstranu1",
            },
            {
                title = 'Sultan',
                description = "700$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d',
                event = "lazic:povuciserverstranu2",
            },
            {
                title = 'Faggio',
                description = "300$",
                icon = 'fas fa-motorcycle',
                image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c',
                event = "lazic:povuciserverstranu3",
            },
        }
    })
    lib.showContext('rent-carnew')
end)

-- SANDY --

RegisterNetEvent('lazic:rentsandy1')
AddEventHandler('lazic:rentsandy1', function(source)
	local coords = Config.RentSandySpawnCoords
	local heading = Config.RentSandyHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentSandyVozilo1, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:rentsandy2')
AddEventHandler('lazic:rentsandy2', function(source)
	local coords = Config.RentSandySpawnCoords
	local heading = Config.RentSandyHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentSandyVozilo2, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:rentsandy3')
AddEventHandler('lazic:rentsandy3', function(source)
	local coords = Config.RentSandySpawnCoords
	local heading = Config.RentSandyHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentSandyVozilo3, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:povuciserverstranusandy1')
AddEventHandler('lazic:povuciserverstranusandy1', function()
    TriggerServerEvent('naplata:sandyfuto')
end)

RegisterNetEvent('lazic:povuciserverstranusandy2')
AddEventHandler('lazic:povuciserverstranusandy2', function()
    TriggerServerEvent('naplata:sandysultan')
end)

RegisterNetEvent('lazic:povuciserverstranusandy3')
AddEventHandler('lazic:povuciserverstranusandy3', function()
    TriggerServerEvent('naplata:sandyfaggio')
end)

exports['qtarget']:AddBoxZone("SandyRent",vector3(1737.95, 3709.01, 34.20), 3.4, 3.4, {
    name="SandyRent",
    heading=127.55,
    debugPoly=false,
    minZ=34.20,
    maxZ=35.20
	}, 
  	{
    options = {
    {
		event = "aa-SANDY",
		icon = "fas fa-circle",
		label = "Rent A Car",
    },
  	},
	job = {"all"},
    distance = 2.0
})

RegisterNetEvent("aa-SANDY")
AddEventHandler("aa-SANDY", function()
    lib.registerContext({
        id = 'rent-carnewsandy',
        title = 'Rent A Car',
        options = {
            {
                title = 'Futo',
                description = "500$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456',
                event = "lazic:povuciserverstranusandy1",
            },
            {
                title = 'Sultan',
                description = "700$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d',
                event = "lazic:povuciserverstranusandy2",
            },
            {
                title = 'Faggio',
                description = "300$",
                icon = 'fas fa-motorcycle',
                image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c',
                event = "lazic:povuciserverstranusandy3",
            },
        }
    })
    lib.showContext('rent-carnewsandy')
end)

-- PALETO --

RegisterNetEvent('lazic:rentpaleto1')
AddEventHandler('lazic:rentpaleto1', function(source)
	local coords = Config.RentPaletoSpawnCoords
	local heading = Config.RentPaletoHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentPaletoVozilo1, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:rentpaleto2')
AddEventHandler('lazic:rentpaleto2', function(source)
	local coords = Config.RentPaletoSpawnCoords
	local heading = Config.RentPaletoHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentPaletoVozilo2, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:rentpaleto3')
AddEventHandler('lazic:rentpaleto3', function(source)
	local coords = Config.RentPaletoSpawnCoords
	local heading = Config.RentPaletoHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentPaletoVozilo3, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('lazic:povuciserverstranupaleto1')
AddEventHandler('lazic:povuciserverstranupaleto1', function()
    TriggerServerEvent('naplata:paletofuto')
end)

RegisterNetEvent('lazic:povuciserverstranupaleto2')
AddEventHandler('lazic:povuciserverstranupaleto2', function()
    TriggerServerEvent('naplata:paletosultan')
end)

RegisterNetEvent('lazic:povuciserverstranupaleto3')
AddEventHandler('lazic:povuciserverstranupaleto3', function()
    TriggerServerEvent('naplata:paletofaggio')
end)

exports['qtarget']:AddBoxZone("PaletoRent",vector3(96.13, 6363.04, 31.36), 3.4, 3.4, {
    name="PaletoRent",
    heading=127.55,
    debugPoly=false,
    minZ=31.36,
    maxZ=32.36
	}, 
  	{
    options = {
    {
		event = "aa-PALETO",
		icon = "fas fa-circle",
		label = "Rent A Car",
    },
  	},
	job = {"all"},
    distance = 2.0
})

RegisterNetEvent("aa-PALETO")
AddEventHandler("aa-PALETO", function()
    lib.registerContext({
        id = 'rent-carnewpaleto',
        title = 'Rent A Car',
        options = {
            {
                title = 'Futo',
                description = "500$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456',
                event = "lazic:povuciserverstranupaleto1",
            },
            {
                title = 'Sultan',
                description = "700$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d',
                event = "lazic:povuciserverstranupaleto2",
            },
            {
                title = 'Faggio',
                description = "300$",
                icon = 'fas fa-motorcycle',
                image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c',
                event = "lazic:povuciserverstranupaleto3",
            },
        }
    })
    lib.showContext('rent-carnewpaleto')
end)

-- BLIP --

local blips = {
    Config.BlipGrad,
    Config.BlipSandy,
    Config.BlipPaleto,
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.75)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

-- NPC --

CreateThread(function()
    for _,v in pairs(Config.Pedovi) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)

      SetEntityInvincible(ped, true)
      PlaceObjectOnGroundProperly(ped)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)
