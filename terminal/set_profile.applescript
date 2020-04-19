on run argv
    set mySettingName to item 1 of argv
    tell application "Terminal"
        set myWindow to front window
        set myTab to selected tab of myWindow
        try
            set current settings of myTab to settings set mySettingName
        end try
    end tell
end run
