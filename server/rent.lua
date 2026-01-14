ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('rent:naplati')
AddEventHandler('rent:naplati', function(locationName, vehicleIndex)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local vozilo = Config.Vozila[vehicleIndex]
    local cena = vozilo.cena
    
    if not vozilo then return end
    
    local imaNovca = false
    
    if Config.Placanje == 'cash' then
        imaNovca = xPlayer.getMoney() >= cena
    elseif Config.Placanje == 'bank' then
        imaNovca = xPlayer.getAccount('bank').money >= cena
    end
    
    if imaNovca then
        if Config.Placanje == 'cash' then
            xPlayer.removeMoney(cena)
        elseif Config.Placanje == 'bank' then
            xPlayer.removeAccountMoney('bank', cena)
        end
        
        TriggerClientEvent('rent:spawnVehicle', src, locationName, vozilo.model)
    else
        -- TriggerClientEvent('mythic_notify:client:SendAlert', src, { 
        --     type = 'error', 
        --     text = 'Nemate dovoljno novca' 
        -- })
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'Nemate dovoljno novca',
            duration = 3000
        })
    end
end)

