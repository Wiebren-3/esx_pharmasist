-- ESX_DEFIBRILATOR --
local usingDefib = false

RegisterNetEvent('esx_pharmasistjob:items:defibrilator')
AddEventHandler('esx_pharmasist:items:defibrilator', function(source)
	local playerPed = GetPlayerPed(-1)

	if IsPedSittingInAnyVehicle(playerPed) then
		ESX.ShowNotification(_U('error_veh'))
	else
		if IsPedOnFoot(playerPed) and not usingDefib then
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			if closestPlayer == -1 or closestDistance > 3.0 then
				ESX.ShowNotification(_U('error_no_ped'))
			else
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				local chance = math.random(100)

				if IsPedDeadOrDying(closestPlayerPed, 1) then
					usingDefib = true
					local playerPed = PlayerPedId()
					local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
					ESX.ShowNotification(_U('revive_inprogress'))

					for i=1, 15 do
						Wait(900)

						ESX.Streaming.RequestAnimDict(lib, function()
							TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0.0, false, false, false)
						end)
					end

					if chance <= 50 then
						TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(closestPlayer))
						ESX.ShowNotification(_U('defib_worked'))
						usingDefib = false
					else
						ESX.ShowNotification(_U('defib_failed'))
						usingDefib = false
					end
				else
					ESX.ShowNotification(_U('player_not_unconscious'))
				end
			end
		else
			ESX.ShowNotification(_U('error_no_foot'))
		end
	end
end)
