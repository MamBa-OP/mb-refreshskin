RegisterCommand('reloadskin', function()
	QBCore.Functions.TriggerCallback('qb-clothing:getPlayerSkin', function(appearance)
		exports['qb-clothing']:setPlayerAppearance(appearance)
	end)
	TriggerEvent('qb-clothing:load:tattoos')
    TriggerEvent('anims:set:walkstyle')
	for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
end)

----if you are using fivem-appearance then use this

--[[
RegisterCommand('reloadskin', function()
	QBCore.Functions.TriggerCallback('fivem-appearance:getPlayerSkin', function(appearance)
		exports['fivem-appearance']:setPlayerAppearance(appearance)
	end)
	TriggerEvent('fivem-appearance:load:tattoos')
	TriggerEvent('anims:set:walkstyle')
	for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
end)
--]]