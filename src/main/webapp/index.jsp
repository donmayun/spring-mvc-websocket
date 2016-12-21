<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>Testing websockets</title>
</head>
<body>
<div>
    <input type="submit" value="Start" onclick="start()"/>
</div>
<div id="messages"></div>
<script type="text/javascript">
    var webSocket =
        new WebSocket('ws://10.1.20.129:8087/websck');

    webSocket.onerror = function (event) {
        showMsg(event)
    };

    webSocket.onopen = function (event) {
        showMsg(event)
    };

    webSocket.onmessage = function (event) {
        showMsg(event)
    };

    webSocket.onclose = function (event) {
        showMsg(event)
    };

    function showMsg(event) {
        document.getElementById('messages').innerHTML
            += '<br />' + event.data;
    }

    function start() {
        if (!webSocket) {
            alert("webSocket not surpport!");
        }
        webSocket.send('hello');
    }
</script>
</body>
</html>