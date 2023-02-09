-- ESX_TOURNIQUET --
RegisterNetEvent('esx:useItem')
AddEventHandler('esx:useItem', function(itemName)
TriggerClientEvent("esx_animations:playEmote", source, "mechanic3")
    if itemName == 'tourniquet' then
        local xPlayer = ESX.GetPlayerFromId(source)
        local playerPed = xPlayer.playerPed
        TriggerEvent('esx_status:add', 'health', 100)
        TriggerClientEvent("esx:showNotification", source, "Je bracht een tourniquet aan om je wond, en er ontloopt nu geen grote hoeveelheid bloed.")
        xPlayer.removeInventoryItem('tourniquet', 1)
    end)
end
