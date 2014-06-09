function showRSSI(var) {
    local rssi = imp.rssi();
    agent.send("rssi", rssi);
}


agent.on("rssi", showRSSI);
