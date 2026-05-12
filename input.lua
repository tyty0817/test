rednet.open("top")
running = true
--Can change this so that the message is an array
--One part of the array will have the number of arguments 
while(running) do
    local id, message = rednet.receive("castle")
    print(("Computer %d sent message %s"):format(id, message))
    if(id == 4 and message == "end") then
    elseif(id == 4 and message.sub(0, 0) == "1") then
        local id, message1 = rednet.receive("castle")
        shell.run(message1)
    elseif(id == 4 and message.sub(0, 0) == "2") then
        local id, message1 = rednet.receive("castle")
        local id, message2 = rednet.receive("castle")
        shell.run(message1, message2)
    elseif(id == 4 and message.sub(0, 0) == "3") then
        local id, message1 = rednet.receive("castle")
        local id, message2 = rednet.receive("castle")
        local id, message3 = rednet.receive("castle")
        shell.run(message1, message2, message3)
    end
end