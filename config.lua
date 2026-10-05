Config = {}

-- Help menu configuration
Config.HelpMenu = {
    Title = 'Experience Studio Lite Help',
    Subtitle = 'Need assistance?',
    Options = {
        {
            Title = 'Tutorial',
            Description = 'Learn how to use Experience Studio Lite',
            Event = 'esl:openTutorial'
        },
        {
            Title = 'Support',
            Description = 'Contact support for help',
            Event = 'esl:openSupport'
        }
    }
}

-- Database configuration
Config.Database = {
    TableName = 'esl_help'
}