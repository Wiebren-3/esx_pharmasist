-- ESX_MEDICINEITEM --

RegisterNetEvent('esx:useItem')
AddEventHandler('esx:useItem', function(itemName)
    if itemName == 'medicine' then
        local xPlayer = ESX.GetPlayerFromId(source)
        local playerPed = xPlayer.playerPed
        TriggerEvent('esx_status:add', 'health', 100)
        TriggerEvent('mythic_notify:client:SendAlert', { type = 'success', text = 'Je nam een ~r~ medicijn ~s~, en voelt je nu beter...' })
        xPlayer.removeInventoryItem('medicine', 1)
    end)
