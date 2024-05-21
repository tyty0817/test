modem = peripheral.wrap("top")
modem.open(42)
repeat
    event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    if message == 16 then
        shell.run("16.lua")
    elseif message == "act" then
        shell.run("act.lua")
    elseif message == "cry" then
        shell.run("cry.lua")
    elseif message == "guitar" then
        shell.run("guitar.lua")
    elseif message == "lonesome" then
        shell.run("lonesome.lua")
    elseif message == "Sin" then
        shell.run("Sin.lua")
    elseif message == "Heartache" then
        shell.run("Heartache.lua")
    elseif message == "Dixie" then
        shell.run("Dixie.lua")
    elseif message == "iron" then
        shell.run("iron.lua")
    elseif message == "shadow" then
        shell.run("shadow.lua")
    elseif message == "stars" then
        shell.run("stars.lua")
    elseif message == "water" then
        shell.run("water.lua")
    elseif message == "kick" then
        shell.run("kick.lua")
    elseif message == "rock" then
        shell.run("rock.lua")
    elseif message == "uranium" then
        shell.run("uranium.lua")
    elseif message == "crawl" then
        shell.run("crawl.lua")
    elseif message == "bongo" then
        shell.run("bongo.lua")
    end
until channel == 43
