rednet.open("top")
local id, message = rednet.receive("castle")
print(("Computer %d sent message %s"):format(id, message))
if(id == 4) then
    shell.run(message)