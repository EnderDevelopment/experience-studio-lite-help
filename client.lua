local ESX = exports['es_extended']:getSharedObject()

-- Open help menu
RegisterNetEvent('esl:openHelpMenu')
AddEventHandler('esl:openHelpMenu', function()
    local elements = {}
    
    for _, option in ipairs(Config.HelpMenu.Options) do
        table.insert(elements, {
            label = option.Title,
            value = option.Event
        })
    end
    
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'help_menu', {
        title = Config.HelpMenu.Title,
        align = 'top-left',
        elements = elements
    }, function(data, menu)
        TriggerEvent(data.current.value)
        menu.close()
    end, function(data, menu)
        menu.close()
    end)
end)

-- Open tutorial
RegisterNetEvent('esl:openTutorial')
AddEventHandler('esl:openTutorial', function()
    -- Implement tutorial logic here
    print('Opening tutorial')
end)

-- Open support
RegisterNetEvent('esl:openSupport')
AddEventHandler('esl:openSupport', function()
    -- Implement support logic here
    print('Opening support')
end)

-- Command to open help menu
RegisterCommand('eslhelp', function()
    TriggerEvent('esl:openHelpMenu')
end, false)