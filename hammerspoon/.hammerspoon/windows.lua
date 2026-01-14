function moveWindowToSpace(appName, spaceIndex)
	hs.application.launchOrFocus(appName)
	local app = hs.application.find(appName)
	if app then
			local mainScreen = hs.screen.mainScreen()
			local targetSpace = mainScreen:spaces()[spaceIndex]
			if targetSpace then
					for _, win in ipairs(app:allWindows()) do
							win:spacesMoveTo(targetSpace)
					end
			end
	end
end

function autoMoveAppToSpace(appName, spaceIndex)
	return function(eventType, appObject)
			if (eventType == hs.application.watcher.launched) and (appObject:name() == appName) then
					moveWindowToSpace(appName, spaceIndex)
			end
	end
end

appWatcher = hs.application.watcher.new(autoMoveAppToSpace("Reminders", 3)):start()
spotifyWatcher = hs.application.watcher.new(autoMoveAppToSpace("Spotify", 3)):start()
