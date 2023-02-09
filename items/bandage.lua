--ESX_BANDAGE--
local usingBandage = false

RegisterNetEvent('esx_pharmasistjob:bandage')
AddEventHandler('esx_pharmasistjob:bandage', function(source)
	local playerPed = GetPlayerPed(-1)
	local health = GetEntityHealth(playerPed)
	local maxHealth = GetEntityMaxHealth(playerPed)
	local newHealth = math.floor(health + Config.HealthKits.BandageHP)

	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('error_veh'))
	else
		if IsPedOnFoot(playerPed) and not usingBandage then
			usingBandage = true
			local lib, anim = 'anim@heists@narcotics@funding@gang_idle', 'gang_chatting_idle01'
			ESX.Streaming.RequestAnimDict(lib, function()
				TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

				Wait(500)
				while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
					Wait(0)
					DisableAllControlActions(0)
				end

				SetEntityHealth(playerPed, newHealth)
				usingBandage = false
			end)
		else
			ESX.ShowNotification(_U('error_no_foot'))
		end
	end
end)
