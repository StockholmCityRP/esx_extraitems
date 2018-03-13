ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------------------------------------
	---- Utiliser Brolly ----
------------------------------------
ESX.RegisterUsableItem('brolly', function(source)
	TriggerClientEvent('esx_useitem:brolly', source)
end)

------------------------------------
	---- Utiliser Kitpic ----
------------------------------------
ESX.RegisterUsableItem('kitpic', function(source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_useitem:kitpic', source)
	xPlayer.removeInventoryItem('kitpic', 1)
end)

------------------------------------
	---- Utiliser Ball ----
------------------------------------
ESX.RegisterUsableItem('ball', function(source)
	TriggerClientEvent('esx_useitem:ball', source)
end)


------------------------------------
	---- Utiliser Swim ----
------------------------------------

ESX.RegisterUsableItem('mask_swim', function(source)
	TriggerClientEvent('esx_useitem:swim', source)

	local xPlayer  = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mask_swim', 1)
end)

------------------------------------
	---- Utiliser Bong ----
------------------------------------

ESX.RegisterUsableItem('bong', function(source)
	TriggerClientEvent('esx_useitem:bong', source)
end)

RegisterServerEvent('esx_useitem:bong')
AddEventHandler('esx_useitem:bong', function()

	local xPlayer  = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bong', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 450000)

end)

------------------------------------
	---- Utiliser Sandwich ----
------------------------------------

ESX.RegisterUsableItem('sandwich', function(source)
	TriggerClientEvent('esx_useitem:sandwich', source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)	
	TriggerClientEvent('esx_status:add', source, 'hunger', 500000)

end)

------------------------------------
	----- Utiliser Tatgun -------
------------------------------------

ESX.RegisterUsableItem('tatgun', function(source)

	TriggerClientEvent('esx_useitem:tatgun', source)

end)

------------------------------------
	----- Utiliser Gillet par balle -------
------------------------------------

ESX.RegisterUsableItem('bulletproof', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerClientEvent('esx_useitem:bulletproof', source)
	xPlayer.removeInventoryItem('bulletproof', 1)

end)

------------------------------------
	----- Utiliser Kali Linux -------
------------------------------------

ESX.RegisterUsableItem('kalilinux', function(source)

	TriggerClientEvent('esx_useitem:kalilinux', source)

end)

------------------------------------
	----- Utiliser ROSE -------
------------------------------------

ESX.RegisterUsableItem('rose', function(source)
	
		TriggerClientEvent('esx_useitem:rose', source)
	
end)

------------------------------------
	----- Utiliser NOTEPAD -------
------------------------------------

ESX.RegisterUsableItem('notepad', function(source)
	
		TriggerClientEvent('esx_useitem:notepad', source)
	
end)
	

------------------------------------
   ---- Faire Les Poubelles ----
------------------------------------
--[[
RegisterServerEvent('esx_useitem:bin')
AddEventHandler('esx_useitem:bin', function()

	local xPlayer  = ESX.GetPlayerFromId(source)
	local total   = math.random(0, 99);

	if     total >= 0 and total <= 50 then
		TriggerClientEvent('esx:showNotification', source, 'La poubelle est ~g~vide')
	elseif total > 50 and total <= 60 then 
		xPlayer.addInventoryItem('condom', 1)
	elseif total > 60 and total <= 65 then
		xPlayer.addInventoryItem('exta', 1)
	elseif total > 65 and total <= 71 then
		xPlayer.addInventoryItem('magazine', 1)
	elseif total > 71 and total <= 74 then
		xPlayer.addInventoryItem('orange', 1)
	elseif total > 74 and total <= 76 then
		xPlayer.addInventoryItem('grape', 1)
	elseif total > 76 and total <= 79 then
		xPlayer.addInventoryItem('water', 1)
	elseif total > 79 and total <=85 then
		xPlayer.addInventoryItem('bread', 1)
	elseif total > 85 and total <= 87 then
		xPlayer.addInventoryItem('orangejus', 1)	
	elseif total > 87 and total <= 88 then
		xPlayer.addInventoryItem('grapesjus', 1)
	elseif total > 88 and total <= 95 then
		xPlayer.addAccountMoney('black_money', 50)	
	elseif total > 95 and total <= 98 then
		xPlayer.addAccountMoney('black_money', 200)	
	elseif total > 98 and total <= 99 then
		xPlayer.addWeapon("weapon_pistol", 12)
	end
end)
]]