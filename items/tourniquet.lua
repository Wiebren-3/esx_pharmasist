-- ESX_MEDICINEITEM --
RegisterNetEvent('esx:useItem')
AddEventHandler('esx:useItem', function(itemName)
TriggerClientEvent("esx_animations:playEmote", source, "mechanic3")
    if itemName == 'tourniquet' then
        local xPlayer = ESX.GetPlayerFromId(source)
        local playerPed = xPlayer.playerPed
        TriggerEvent('esx_status:add', 'health', 100)
        TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = 'Je bracht een tourniquet aan om je wond, en er ontloopt nu geen grote hoeveelheid bloed.' })
        xPlayer.removeInventoryItem('tourniquet', 1)
    end)
