local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('gp-tradenpc:server:startr', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(scrap, 10)
        Player.Functions.AddItem("weapon_scrap", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_scrap"], "add")
		TriggerClientEvent("gp-tradenpc:server:tradeactive", src)
        TriggerClientEvent('QBCore:Notify', src, Lang:t("success."), 'success')
	else
		TriggerClientEvent('QBCore:Notify', source, Lang:t("error.you_dont_have_enough_scrap"), 'error')
	end
end)