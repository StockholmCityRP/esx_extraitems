ESX = nil
local CurrentActionData   = {}
local lastTime            = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

------------------------------------------------------------------------------------
------------------------------------ Use Brolly ------------------------------------
------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:brolly')
AddEventHandler('esx_useitem:brolly', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

	Citizen.CreateThread(function()
    
    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)
    local boneIndex = GetPedBoneIndex(playerPed, 57005)
        
    RequestAnimDict('amb@code_human_wander_drinking@beer@male@base')
    
    while not HasAnimDictLoaded('amb@code_human_wander_drinking@beer@male@base') do
      Citizen.Wait(0)
    end
    
    ESX.Game.SpawnObject('p_amb_brolly_01', {
      x = coords.x,
      y = coords.y,
      z = coords.z + 2
    }, function(object)
    
    Citizen.CreateThread(function()
    
      AttachEntityToEntity(object, playerPed, boneIndex, 0.10, 0, -0.001, 80.0, 150.0, 200.0, true, true, false, true, 1, true)
      TaskPlayAnim(playerPed, "amb@code_human_wander_drinking@beer@male@base", "static", 3.5, -8, -1, 49, 0, 0, 0, 0)
      Citizen.Wait(30000)
      DeleteObject(object)
      ClearPedSecondaryTask(playerPed)
      
     end)
    end)
  end)
end)

------------------------------------------------------------------------------------
------------------------------------ Use ROSE ------------------------------------
------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:rose')
AddEventHandler('esx_useitem:rose', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

	Citizen.CreateThread(function()
    
    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)
    local boneIndex = GetPedBoneIndex(playerPed, 57005)
        
    RequestAnimDict('amb@code_human_wander_drinking@beer@male@base')
    
    while not HasAnimDictLoaded('amb@code_human_wander_drinking@beer@male@base') do
      Citizen.Wait(0)
    end
    
    ESX.Game.SpawnObject('p_single_rose_s', {
      x = coords.x,
      y = coords.y,
      z = coords.z + 2
    }, function(object)
    
    Citizen.CreateThread(function()
    
      AttachEntityToEntity(object, playerPed, boneIndex, 0.10, 0, -0.001, 80.0, 150.0, 200.0, true, true, false, true, 1, true)
      TaskPlayAnim(playerPed, "amb@code_human_wander_drinking@beer@male@base", "static", 3.5, -8, -1, 49, 0, 0, 0, 0)
      Citizen.Wait(30000)
      DeleteObject(object)
      ClearPedSecondaryTask(playerPed)
      
     end)
    end)
  end)
end)

---------------------------------------------------------------------------------------------
-------------------------------------------USE BONG -----------------------------------------
---------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:bong')
AddEventHandler('esx_useitem:bong', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

	Citizen.CreateThread(function()
    
    local playerPed  = GetPlayerPed(-1)
    local coords     = GetEntityCoords(playerPed)
    local boneIndex  = GetPedBoneIndex(playerPed, 18905)
    local boneIndex2 = GetPedBoneIndex(playerPed, 57005)

      RequestAnimDict('anim@safehouse@bong')
        
    while not HasAnimDictLoaded('anim@safehouse@bong') do
      Citizen.Wait(0)
    end
    
    ESX.Game.SpawnObject('hei_heist_sh_bong_01', {
      x = coords.x,
      y = coords.y,
      z = coords.z - 3
    }, function(object)

    ESX.Game.SpawnObject('p_cs_lighter_01', {
      x = coords.x,
      y = coords.y,
      z = coords.z - 3
    }, function(object2)
    
    Citizen.CreateThread(function()
    
      TaskPlayAnim(playerPed, "anim@safehouse@bong", "bong_stage1", 3.5, -8, -1, 49, 0, 0, 0, 0)
      Citizen.Wait(1500)
      AttachEntityToEntity(object2, playerPed, boneIndex2, 0.10, 0.0, 0, 99.0, 192.0, 180.0, true, true, false, true, 1, true)
      AttachEntityToEntity(object, playerPed, boneIndex, 0.10, -0.25, 0, 95.0, 190.0, 180.0, true, true, false, true, 1, true)
      Citizen.Wait(6000)
      DeleteObject(object)
      DeleteObject(object2)
      ClearPedSecondaryTask(playerPed)
      TriggerServerEvent('esx_useitem:bong')
      end)
     end)
    end)
  end)
end)


-----------------------------------------------------------------------------------------------
------------------------------------------ OUTFIT SWIM ----------------------------------------
-----------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:swim')
AddEventHandler('esx_useitem:swim', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

	Citizen.CreateThread(function()
    
    local playerPed  = GetPlayerPed(-1)
    local coords     = GetEntityCoords(playerPed)
    local boneIndex  = GetPedBoneIndex(playerPed, 12844)
    local boneIndex2 = GetPedBoneIndex(playerPed, 24818)
    
    ESX.Game.SpawnObject('p_s_scuba_mask_s', {
      x = coords.x,
      y = coords.y,
      z = coords.z - 3
    }, function(object)

   
    ESX.Game.SpawnObject('p_s_scuba_tank_s', {
      x = coords.x,
      y = coords.y,
      z = coords.z - 3
    }, function(object2) 

      Citizen.CreateThread(function()
      AttachEntityToEntity(object2, playerPed, boneIndex2, -0.30, -0.22, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
      AttachEntityToEntity(object, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
      SetPedDiesInWater(playerPed, false)
      ESX.ShowNotification('~g~Boutielle ~s~: 100%')
      ESX.ShowNotification('~g~Allez vous baigner')
      Citizen.Wait(45000)
      ESX.ShowNotification('~y~Boutielle ~s~: 50%')
      Citizen.Wait(45000)
      ESX.ShowNotification('~o~Boutielle ~s~: 10%')
      Citizen.Wait(30000)
      ESX.ShowNotification('~r~Boutielle ~s~: 0%')
      SetPedDiesInWater(playerPed, true)
      DeleteObject(object)
      DeleteObject(object2)
      ClearPedSecondaryTask(playerPed)
      end)
     end)
    end)
  end)
end)

----------------------------------------------------------------------------------------------
---------------------------------------EAT SANDWICH ------------------------------------------
----------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:sandwich')
AddEventHandler('esx_useitem:sandwich', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

	Citizen.CreateThread(function()
    
    local playerPed  = GetPlayerPed(-1)
    local coords     = GetEntityCoords(playerPed)
    local boneIndex  = GetPedBoneIndex(playerPed, 18905)
    local boneIndex2 = GetPedBoneIndex(playerPed, 57005)

      RequestAnimDict('amb@code_human_wander_eating_donut@male@idle_a')
        
    while not HasAnimDictLoaded('amb@code_human_wander_eating_donut@male@idle_a') do
      Citizen.Wait(0)
    end
    
    ESX.Game.SpawnObject('prop_sandwich_01', {
      x = coords.x,
      y = coords.y,
      z = coords.z - 3
    }, function(object)

    
    Citizen.CreateThread(function()
    
      TaskPlayAnim(playerPed, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c", 3.5, -8, -1, 49, 0, 0, 0, 0)
      AttachEntityToEntity(object, playerPed, boneIndex2, 0.15, 0.01, -0.06, 185.0, 215.0, 180.0, true, true, false, true, 1, true)
      Citizen.Wait(6500)
      DeleteObject(object)
      ClearPedSecondaryTask(playerPed)
      end)
    end)
  end)
end)

------------------------------------------------------------------------------------
------------------------------------ Use Tatgun ------------------------------------
------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:tatgun')
AddEventHandler('esx_useitem:tatgun', function()

local playerPed = GetPlayerPed(-1)
local coords    = GetEntityCoords(playerPed)

Citizen.CreateThread(function()
  
  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)
  local boneIndex = GetPedBoneIndex(playerPed, 11816)
  local boneIndex2 = GetPedBoneIndex(playerPed, 6286)
      
    RequestAnimDict('random@shop_tattoo')
      
  while not HasAnimDictLoaded('random@shop_tattoo') do
    Citizen.Wait(0)
  end

    ESX.Game.SpawnObject('v_ilev_ta_tatgun', {
      x = coords.x,
      y = coords.y,
      z = coords.z + 2
    }, function(object2)
  
      Citizen.CreateThread(function()

        AttachEntityToEntity(object2, playerPed, boneIndex2, 0.09, 0.11, 0.01, -75.0, -90.0, -140.0, true, true, false, true, 1, true)
        TaskPlayAnim(GetPlayerPed(-1), "random@shop_tattoo", "artist_artist_finishes_up_his_tattoo" ,3.5, -8, -1, 49, 0,false, false, false )
        Citizen.Wait(13000)
        DeleteObject(object)
        DeleteObject(object2) 
        ClearPedSecondaryTask(playerPed)
      end)
    end)
  end)
end)

------------------------------------------------------------------------------------
------------------------------------ Use notepad ------------------------------------
------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:notepad')
AddEventHandler('esx_useitem:notepad', function()

local playerPed = GetPlayerPed(-1)
local coords    = GetEntityCoords(playerPed)

Citizen.CreateThread(function()
  
  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)
  local boneIndex = GetPedBoneIndex(playerPed, 36029)
      
    RequestAnimDict('amb@world_human_clipboard@male@idle_b')
      
  while not HasAnimDictLoaded('amb@world_human_clipboard@male@idle_b') do
    Citizen.Wait(0)
  end

    ESX.Game.SpawnObject('prop_notepad_01', {
      x = coords.x,
      y = coords.y,
      z = coords.z + 2
    }, function(object)
  
      Citizen.CreateThread(function()

        AttachEntityToEntity(object, playerPed, boneIndex, 0.10, 0.08, 0.07, 155.0, 120.0, -180.0, true, true, false, true, 1, true)
        TaskPlayAnim(GetPlayerPed(-1), "amb@world_human_clipboard@male@idle_b", "idle_d" ,3.5, -8, -1, 49, 0,false, false, false )
        Citizen.Wait(25000)
        DeleteObject(object) 
        ClearPedSecondaryTask(playerPed)
      end)
    end)
  end)
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    local CurrentActionData = {entity = "prop_notepad_01"}
        
      if IsControlJustReleased(0, 73) then              
        DeleteObject("prop_notepad_01") 
      end
  end
end)

-----------------------------------------------------------------------------------------------
--------------------------------------------- KIT PIC -----------------------------------------
-----------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:kitpic')
AddEventHandler('esx_useitem:kitpic', function()
  
    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)

    ESX.Game.SpawnObject('prop_yoga_mat_02',  {
      x = coords.x,
      y = coords.y,
      z = coords.z -1
    }, function(object)
    end)
    ESX.Game.SpawnObject('prop_yoga_mat_02',  {
      x = coords.x ,
      y = coords.y -0.9,
      z = coords.z -1
    }, function(object)
    end)
    ESX.Game.SpawnObject('prop_yoga_mat_02',  {
      x = coords.x ,
      y = coords.y +0.9,
      z = coords.z -1
    }, function(object)
    end)
    ESX.Game.SpawnObject('prop_champset',  {
      x = coords.x ,
      y = coords.y ,
      z = coords.z -1
    }, function(object)
    end)
    ESX.Game.SpawnObject('prop_beach_fire',  {
      x = coords.x +1.3,
      y = coords.y ,
      z = coords.z -1.6
    }, function(object)
    end)
    
end)


-----------------------------------------------------------------------------------------------
--------------------------------------------- Kali Linux -----------------------------------------
-----------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:kalilinux')
AddEventHandler('esx_useitem:kalilinux', function()
  
    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)

    TriggerEvent("mhacking:show")
    TriggerEvent("mhacking:start",7,35,mycb)
    
end)

function mycb(success, timeremaining)
	if success then
		print('Success with '..timeremaining..'s remaining.')
		TriggerEvent('mhacking:hide')
	else
		print('Failure')
		TriggerEvent('mhacking:hide')
	end
end

-----------------------------------------------------------------------------------------------
--------------------------------------------- Bulletproof -----------------------------------------
-----------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:bulletproof')
AddEventHandler('esx_useitem:bulletproof', function()
  
    local playerPed = GetPlayerPed(-1)

			SetPedComponentVariation(playerPed, 9, 27, 9, 2)
			AddArmourToPed(playerPed, 100)
      SetPedArmour(playerPed, 100)
    
end)

-----------------------------------------------------------------------------------------------
-------------------------------------------- BALL XXL -----------------------------------------
-----------------------------------------------------------------------------------------------

RegisterNetEvent('esx_useitem:ball')
  AddEventHandler('esx_useitem:ball', function()

    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)

 ESX.Game.SpawnObject('prop_beach_volball01',  {
      x = coords.x +1.5,
      y = coords.y +1.5,
      z = coords.z -1
    }, function(object)
  end)

end)


----------------------------------------------------------------------------
--------------------------------  OPEN BIN  --------------------------------
----------------------------------------------------------------------------
--[[

AddEventHandler('esx_useitem:trashcanEnteredEntityZone', function(entity)
  
    local playerPed = GetPlayerPed(-1)
  
      CurrentAction     = 'open_bin'
      CurrentActionMsg  = 'Appuyez sur ~INPUT_TALK~ pour faire les poubelles'
      CurrentActionData = {entity = entity}
  
end)

AddEventHandler('esx_useitem:trashcanhasExitedEntityZone', function(entity)
  
    if CurrentAction == 'open_bin' then
      CurrentAction = nil
    end
  
end)

Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		local playerPed = GetPlayerPed(-1)
		local coords    = GetEntityCoords(playerPed)

		local entity, distance = ESX.Game.GetClosestObject({
      'prop_recyclebin_03_a',
      'zprop_bin_01a_old',
      'prop_bin_01a',
      'prop_bin_03a',
      'prop_bin_05a',
      'prop_bin_06a',
      'prop_bin_07a',
      'prop_bin_07d',
      'prop_cs_bin_02'

		})

		if distance ~= -1 and distance <= 2.0 then

 			if entity then
				TriggerEvent('esx_useitem:trashcanEnteredEntityZone', entity)
				LastEntity = entity
			end

		else

			if entity ~= nil then
				TriggerEvent('esx_useitem:trashcanhasExitedEntityZone', entity)
				entity = nil
			end

		end

	end
end)

function OpenBin()

  local playerPed = GetPlayerPed(-1)

	Citizen.CreateThread(function()
    
    local playerPed  = GetPlayerPed(-1)

    TaskPlayAnim(playerPed, "amb@prop_human_bum_bin@enter", "enter", 3.5, -8, -1, 2, 0, 0, 0, 0)
    TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
    Citizen.CreateThread(function()
    Citizen.Wait(10000)
    TriggerServerEvent('esx_useitem:bin')
    ClearPedTasksImmediately(playerPed)
    end)
  end)

end ]]

------------------------------------------------------------------------------------------------
---------------------------------------- KEY CONTROLS ------------------------------------------
------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)

      if CurrentAction ~= nil then
         
        SetTextComponentFormat('STRING')
        AddTextComponentString(CurrentActionMsg)
        DisplayHelpTextFromStringLabel(0, 0, 1, -1)
        
      if IsControlJustReleased(0, 38) then              

        if CurrentAction == 'remove_entity' then
          DeleteEntity(CurrentActionData.entity)
        end

        if CurrentAction == 'open_bin' then
          if GetGameTimer() - lastTime >= 15000 then 
            OpenBin()
            lastTime = GetGameTimer()
          end
        end

          CurrentAction = nil               
      end
    end
  end
end)

