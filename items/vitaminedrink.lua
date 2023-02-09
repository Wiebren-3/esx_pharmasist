-- ESX_VITAMINDRINK --
RegisterNetEvent('esx:useItem')
AddEventHandler('esx:useItem', function(itemName)
TriggerClientEvent("esx_animations:playEmote", source, "drink")
    if itemName == 'vitamindrink' then
        local xPlayer = ESX.GetPlayerFromId(source)
        local playerPed = xPlayer.playerPed
        TriggerEvent('esx_status:add', 'health', 3 )
        TriggerClientEvent("esx:showNotification", source, "Je dronk een vitaminedrankje, je zal nu iets helderder kunnen denken/zien.")
        xPlayer.removeInventoryItem('vitamindrink', 1)
    end)
end
