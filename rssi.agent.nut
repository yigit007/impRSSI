server.log("Agent Started");

function httpHandler(request, response) {
    if ("rssi" in request.query) {
        device.send("rssi", 0);
        device.on("rssi", function(rssi) {
            response.send(200, "Signal Strength: " + rssi + " dBm.");
        });
    }
}

http.onrequest(httpHandler);
