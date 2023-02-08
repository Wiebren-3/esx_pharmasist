RegisterNetEvent('esx:useItem')
AddEventHandler('esx:useItem', function(itemName)
TriggerClientEvent("esx_animations:playEmote", source, "mechanic3")
	TriggerClientEvent("esx:showNotification", source, "Je nam een pijnstiller, en voelt je langzamerhand steeds beter.")
    	TriggerClientEvent("esx_animations:playEmote", source, "eat")
        local xPlayer = ESX.GetPlayerFromId(source)
       		local playerPed = xPlayer.playerPed
		xPlayer.removeInventoryItem('tourniquet', 1)	
SetTimeout(30000, function()
		TriggerClientEvent("esx:showNotification", source, "Je bent compleet herstelt!")
		TriggerEvent('esx_status:add', 'health', 100)
	end)
end
