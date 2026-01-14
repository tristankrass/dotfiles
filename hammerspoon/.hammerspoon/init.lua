 -- More inspiration: https://github.com/JJGO/dotfiles/blob/master/mac/.hammerspoon/init.lua

-- Define Hyper key
hyperKey = {"cmd", "alt", "ctrl", "shift"}

-- ============================================
-- CAPS LOCK: ESCAPE (tap) / HYPER (hold)
-- Handled by Karabiner (karabiner.json)
-- to_if_alone: Caps Lock tap → Escape
-- to_if_held_down: Caps Lock hold → Hyper (⌃⌥⇧⌘)
-- ============================================

-- Be on mute by default
hs.loadSpoon("PushToTalk")
spoon.PushToTalk.detect_on_start = true
spoon.PushToTalk.app_switcher = {
    ['zoom.us'] = 'push-to-talk'
}
spoon.PushToTalk:start()

-- Wifi Notifier
hs.loadSpoon("WifiNotifier")
spoon.WifiNotifier.notificationTitle = "Wi-Fi Network Change"
spoon.WifiNotifier.notificationSubtitle = "Connected to:"
spoon.WifiNotifier:start()

-- Get shortcuts for a given app
hs.loadSpoon("KSheet")

-- Set a hotkey to show keyboard shortcuts for the active application
hs.hotkey.bind(hyperKey, "'", function()
  spoon.KSheet:toggle()
end)

apps = {
  {'i', 'IntelliJ IDEA Ultimate'},
  {'n', 'Notes'},
  {'s', 'Slack'},
  {'t', 'iTerm'},
  {'a', 'Alacritty'},
  {'c', 'Google Chrome'}
}

for app in pairs(apps) do
  hs.hotkey.bind(hyperKey, apps[app][1], function()
    hs.application.launchOrFocus(apps[app][2])
  end)
end

function toggleMute()
  local device = hs.audiodevice.defaultOutputDevice()
  device:setMuted(not device:muted())
end

hs.hotkey.bind(hyperKey, "m", toggleMute)


-- Desktop management
local laptopScreen = hs.screen.find(1) -- ("Built-in Display") -- 1
local externalScreen = hs.screen.find("LG HDR 4K")

-- If external monitor LG is connected, move windows to it, but Notion stays on laptop
function moveWindowsToExternalMonitor()
  
  if laptopScreen and externalScreen then
    local laptopWindows = hs.fnutils.filter(hs.window.orderedWindows(), function(win)
      return win:screen() == laptopScreen
    end)

    local externalWindows = hs.fnutils.filter(hs.window.orderedWindows(), function(win)
      return win:screen() == externalScreen
    end)

    hs.fnutils.each(externalWindows, function(win)
      win:moveToScreen(laptopScreen)
    end)

    hs.fnutils.each(laptopWindows, function(win)
      if win:title() ~= "Notion" then
        win:moveToScreen(externalScreen)
      end
    end)
  end
end

--  Automatically trigger moveWindowsToExternalMonitor when monitor is connected/disconnected
function monitorWatcherCallback()
  if laptopScreen and externalScreen then
    moveWindowsToExternalMonitor()
  end
  -- If there are 3 monitors, move Notion to laptop screen
  if hs.screen.allScreens() == 3 then
    print("3 monitors are currently connected")
  end

  moveUtilitiesToLaptopScreen()
end



function moveUtilitiesToLaptopScreen()
  -- Move Notion to laptop screen
  local notionWindow = hs.appfinder.appFromName("Notion"):focusedWindow()
  if notionWindow then
    notionWindow:moveToScreen(laptopScreen)
  end
end


-- Move windows to external monitor when connected
monitorWatcher = hs.screen.watcher.new(monitorWatcherCallback)
monitorWatcher:start()

--- When connecting laptop at work to two monitors
local allScreens = hs.screen.allScreens()
for i, screen in ipairs(allScreens) do
  -- if screen:name() == "S27H85x" then
  -- if screen name starts with S27H85x, then it's the external monitor
  if string.match(screen:name(), "S27H85x") then
    print("Screen " .. i .. ": " .. screen:name())
  end  
end

monitorWatcher = hs.screen.watcher.new(monitorWatcherCallback)

-- Reload config
hs.hotkey.bind(hyperKey, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

-- helper functions
function printt(table)
  for k, v in pairs(table) do
      print(k .. "--\t" .. tostring(v))
  end
end

function clickMenuItem(app, item)
  app = hs.application.find(app)
  app:selectMenuItem(item)
end

function file_exists(name)
  local f=io.open(name,"r") 
  if f~=nil then io.close(f) return true else return false end
end

function require_if_exists(file)
  if file_exists(file .. ".lua") then
      print(" #### Loading " .. file)
      require(file)
  end
end


require_if_exists("pomo")
-- require_if_exists("hs-fuzzy-window-picker")
hs.loadSpoon("Hammerflow")
spoon.Hammerflow.loadFirstValidTomlFile({
    "home.toml"
    -- "work.toml",
    -- "Spoons/Hammerflow.spoon/sample.toml"
})
