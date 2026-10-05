local ESX = exports['es_extended']:getSharedObject()

-- Register server event for help request
RegisterNetEvent('esl:requestHelp')
AddEventHandler('esl:requestHelp', function(helpType)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if xPlayer then
        MySQL.Async.execute('INSERT INTO ' .. Config.Database.TableName .. ' (player_id, help_type, request_time) VALUES (@player_id, @help_type, NOW())', {
            ['@player_id'] = xPlayer.identifier,
            ['@help_type'] = helpType
        }, function(rowsChanged)
            if rowsChanged > 0 then
                print('Help request recorded for player ' .. xPlayer.identifier)
            else
                print('Failed to record help request for player ' .. xPlayer.identifier)
            end
        end)
    end
end)

-- Command to open help menu
ESX.RegisterCommand('eslhelp', 'user', function(xPlayer, args, showError)
    TriggerClientEvent('esl:openHelpMenu', xPlayer.source)
end, false, {help = 'Open Experience Studio Lite help menu'})