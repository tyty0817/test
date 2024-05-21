modem = peripheral.wrap("back")
modem.open(42)
repeat
    x = math.random(17)
    if x == 1 then
        modem.transmit(42, 0, "16")
    elseif x == 2 then
        modem.transmit(42, 0, "act")
    elseif x == 3 then
        modem.transmit(42, 0, "cry")
    elseif x == 4 then
        modem.transmit(42, 0, "guitar")
    elseif x == 5 then
        modem.transmit(42, 0, "lonesome")
    elseif x == 6 then
        modem.transmit(42, 0, "Sin")
    elseif x == 7 then
        modem.transmit(42, 0, "Heartache")
    elseif x == 8 then
        modem.transmit(42, 0, "Dixie")
    elseif x == 9 then
        modem.transmit(42, 0, "iron")
    elseif x == 10 then
        modem.transmit(42, 0, "shadow")
    elseif x == 11 then
        modem.transmit(42, 0, "stars")
    elseif x == 12 then
        modem.transmit(42, 0, "water")
    elseif x == 13 then
        modem.transmit(42, 0, "kick")
    elseif x == 14 then
        modem.transmit(42, 0, "rock")
    elseif x == 15 then
        modem.transmit(42, 0, "uranium")
    elseif x == 16 then
        modem.transmit(42, 0, "crawl")
    elseif x == 17 then
        modem.transmit(42, 0, "bongo")
    end
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    until message == "done"
until channel == 43
