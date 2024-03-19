ESX = nil
ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
  RegisterCommand("opravit", function()
    Wait(200)
    ESX.Progressbar("Opravuješ Vozidlo", 10000,{
      FreezePlayer = true, 
      onFinish = function()
        local localPlayerPed = GetPlayerPed(-1)
        local localVehicle = GetVehiclePedIsIn(localPlayerPed, false)
        SetVehicleFixed(localVehicle)
  end})
    ESX.ShowNotification('Vozidlo bylo opraveno');
    Citizen.Wait(200)
  end)
end)
