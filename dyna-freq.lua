--#http://ugbase.eu/index.php?threads/all-virtual-key-codes.2154/
--#script_author(Joe_Dunne)
local key = 90

require"lib.moonloader"
require"lib.sampfuncs"
local https = require 'ssl.https'

local PressType = {KeyDown = isKeyDown, KeyPressed = wasKeyPressed}

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
	while true do
		wait(100)
		if keycheck({k  = {key}, t = {'KeyDown', 'KeyPressed'}}) and isKeyControlAvailable() then
			local freq = https.request("REPLACE-ME-WITH-A-LINK")
			sampSendChat(string.format("/setfreq %d", freq))
				wait(500)
		end
	end	
end

function keycheck(k)
    local r = true
    for i = 1, #k.k do
        r = r and PressType[k.t[i]](k.k[i])
    end
    return r
end

function isKeyControlAvailable()
	if not isSampLoaded() then return true end
	if not isSampfuncsLoaded() then return not sampIsChatInputActive() and not sampIsDialogActive() end
	return not sampIsChatInputActive() and not sampIsDialogActive() and not isSampfuncsConsoleActive()
end
