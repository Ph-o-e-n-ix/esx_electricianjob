if Config.UseNewESX then
	ESX = exports["es_extended"]:getSharedObject()
else 
	local ESX = nil 
	TriggerEvent('esx:getSharedObject', function(obj) 
		ESX = obj 
	end)
end 

RegisterServerEvent("electric:getmoney")
AddEventHandler("electric:getmoney", function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addAccountMoney(Config.Account, Config.Reward)
	-- TriggerClientEvent('okokNotify:Alert', source, "Info", "Du hast " ..Config.Reward.. "$ erhalten", 2500, 'success')
end)
