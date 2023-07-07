ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('naplata:gradfuto')
AddEventHandler('naplata:gradfuto', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local futopare = Config.Vozilo1Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= futopare then
            xPlayer.removeMoney(futopare)
            TriggerClientEvent('lazic:rentgrad1', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= futopare then
            xPlayer.removeAccountMoney('bank', futopare)
            TriggerClientEvent('lazic:rentgrad1', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

RegisterNetEvent('naplata:gradsultan')
AddEventHandler('naplata:gradsultan', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local sultanpare = Config.Vozilo2Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= sultanpare then
            xPlayer.removeMoney(sultanpare)
            TriggerClientEvent('lazic:rentgrad2', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= sultanpare then
            xPlayer.removeAccountMoney('bank', sultanpare)
            TriggerClientEvent('lazic:rentgrad2', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

RegisterNetEvent('naplata:gradfaggio')
AddEventHandler('naplata:gradfaggio', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local faggiopare = Config.Vozilo3Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= faggiopare then
            xPlayer.removeMoney(faggiopare)
            TriggerClientEvent('lazic:rentgrad3', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= faggiopare then
            xPlayer.removeAccountMoney('bank', faggiopare)
            TriggerClientEvent('lazic:rentgrad3', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

-- SANDY --

RegisterNetEvent('naplata:sandyfuto')
AddEventHandler('naplata:sandyfuto', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local futopare = Config.Vozilo1Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= futopare then
            xPlayer.removeMoney(futopare)
            TriggerClientEvent('lazic:rentsandy1', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= futopare then
            xPlayer.removeAccountMoney('bank', futopare)
            TriggerClientEvent('lazic:rentsandy1', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

RegisterNetEvent('naplata:sandysultan')
AddEventHandler('naplata:sandysultan', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local sultanpare = Config.Vozilo2Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= sultanpare then
            xPlayer.removeMoney(sultanpare)
            TriggerClientEvent('lazic:rentsandy2', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= sultanpare then
            xPlayer.removeAccountMoney('bank', sultanpare)
            TriggerClientEvent('lazic:rentsandy2', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

RegisterNetEvent('naplata:sandyfaggio')
AddEventHandler('naplata:sandyfaggio', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local faggiopare = Config.Vozilo3Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= faggiopare then
            xPlayer.removeMoney(faggiopare)
            TriggerClientEvent('lazic:rentsandy3', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= faggiopare then
            xPlayer.removeAccountMoney('bank', faggiopare)
            TriggerClientEvent('lazic:rentsandy3', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

-- PALETO --

RegisterNetEvent('naplata:paletofuto')
AddEventHandler('naplata:paletofuto', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local futopare = Config.Vozilo1Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= futopare then
            xPlayer.removeMoney(futopare)
            TriggerClientEvent('lazic:rentpaleto1', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= futopare then
            xPlayer.removeAccountMoney('bank', futopare)
            TriggerClientEvent('lazic:rentpaleto1', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

RegisterNetEvent('naplata:paletosultan')
AddEventHandler('naplata:paletosultan', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local sultanpare = Config.Vozilo2Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= sultanpare then
            xPlayer.removeMoney(sultanpare)
            TriggerClientEvent('lazic:rentpaleto2', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= sultanpare then
            xPlayer.removeAccountMoney('bank', sultanpare)
            TriggerClientEvent('lazic:rentpaleto2', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)

RegisterNetEvent('naplata:paletofaggio')
AddEventHandler('naplata:paletofaggio', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local faggiopare = Config.Vozilo3Naplata
    if Config.Placanje == 'cash' then
        if xPlayer.getMoney() >= faggiopare then
            xPlayer.removeMoney(faggiopare)
            TriggerClientEvent('lazic:rentpaleto3', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    elseif Config.Placanje == 'bank' then
        if xPlayer.getAccount('bank').money >= faggiopare then
            xPlayer.removeAccountMoney('bank', faggiopare)
            TriggerClientEvent('lazic:rentpaleto3', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'error', text = 'Nemate dovoljno novca'})
        end
    end
end)
