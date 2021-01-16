-- HAMMERSPOON CONFIG
-- Hyper mode
local hyper = {"ctrl", "alt", "cmd", "shift"}
wifiWatcher = nil
cloud_uploud = false
charger_watcher = nil

hs.hotkey.bind(hyper, "W", function()
    hs.alert.show("Hello from Hammerspoon!")
end)


hs.hotkey.bind(hyper, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")



-- Bring all Finder windows forward when one gets activated
function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.activated) then
    if (appName == "Finder") then
      appObject:selectMenuItem({"Window", "Bring All to Front"})
    end
  end
end
appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()



-- Hack layout
local_hack_layout = {
  { "Terminal", nil, main_monitor, hs.layout.maximized, nil, nil},
  { "Safari", nil, main_monitor, hs.layout.maximized, nil, nil},
}

hs.hotkey.bind(hyper, '3', function()
  hs.application.launchOrFocus('Safari')
  hs.application.launchOrFocus('Terminal')
  hs.layout.apply(writing_layout)
end)

-- ONEDRIVE WATCHER
charger_watcher = hs.battery.watcher.new(function ()
  bat = hs.battery.percentage()
  charging = hs.battery.isCharging()
  net = hs.wifi.currentNetwork()

  local onedrive = hs.application.find('Onedrive')

  if bat < 30 and not charging then
    onedrive:kill() 
  elseif not onedrive:isRunning() then
      hs.alert.show("hellow")
      hs.application.open('Onedrive')
      onedrive:hide()
  end 
end)
charger_watcher:start() 

wifiwatcher = hs.wifi.watcher.new(function ()
    net = hs.wifi.currentNetwork()
    if net==nil then
        hs.alert.show("You lost Wi-Fi connection")
    elseif net =='TKKingdom' and (hs.battery.isCharging() or hs.battery.isCharged()) then
        hs.application.open('Onedrive')
        hs.application.open('Backup and Sync')
        hs.alert.show("Connected to Wi-Fi network TKKKKKK")
    end
end)
wifiwatcher:start()


if hs.wifi.currentNetwork() == 'TKKingdom' then 
  hs.hotkey.bind(hyper, '1', function()
    hs.application.launchOrFocus('Onedrive')
    hs.application.launchOrFocus('Backup and Sync')
    hs.layout.apply(writing_layout)
  end)
end
-- ONEDRIVE WATCHER END




-- Application hotkeys
hs.hotkey.bind(hyper, 't', function() toggle_application("Terminal") end)

-- Show config
hs.hotkey.bind(hyper, 'e', function ()
  io.popen('open ~/.hammerspoon/init.lua')
end)


-- App shortcuts
local applicationHotkeys = {
  c = 'Visual Studio Code',
  t = 'Terminal',
  s = 'Spotify',
  e = 'Evernote',
  q = '',
  f = 'Firefox Developer Edition',
  j = '',
  i = 'IntelliJ IDEA',
  w = '',
  d = ''
}
for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end




hs.hotkey.bind(hyper, ';', function()
  local chargingMark = hs.battery.isCharging() and " *" or ""
  local battery =  hs.battery.percentage() .. "%" .. chargingMark
  hs.alert.show(os.date("%a %b %d - %H:%M | ") .. battery, 4)
end)



