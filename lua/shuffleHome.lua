rednet.open("top")
::start::
x = math.random(17)
rednet.broadcast("1", "castle")
if x == 17 then
    rednet.broadcast("16.lua", "castle")
elseif x == 16 then
    rednet.broadcast("act.lua", "castle")
elseif x == 15 then
    rednet.broadcast("cry.lua", "castle")
elseif x == 14 then
    rednet.broadcast("guitar.lua", "castle")
elseif x == 13 then
    rednet.broadcast("lonesome.lua", "castle")
elseif x == 12 then
    rednet.broadcast("Sin.lua", "castle")
elseif x == 11 then
    rednet.broadcast("Heartache.lua", "castle")
elseif x == 10 then
    rednet.broadcast("Dixie.lua", "castle")
elseif x == 9 then
    rednet.broadcast("iron.lua", "castle")
elseif x == 8 then
    rednet.broadcast("shadow.lua", "castle")
elseif x == 7 then
    rednet.broadcast("stars.lua", "castle")
elseif x == 6 then
    rednet.broadcast("water.lua", "castle")
elseif x == 5 then
    rednet.broadcast("kick.lua", "castle")
elseif x == 4 then
    rednet.broadcast("rock.lua", "castle")
elseif x == 3 then
    rednet.broadcast("uranium.lua", "castle")
elseif x == 2 then
    rednet.broadcast("crawl.lua", "castle")
elseif x == 1 then
    rednet.broadcast("bongo.lua", "castle")
end
::listen::
rednet.recieve("castle")
local id, message = rednet.receive()
if (id == 5 and message == "done") then
    goto start
elseif (id != 5) then
    goto listen
end
