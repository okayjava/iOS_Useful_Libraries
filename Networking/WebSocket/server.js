const WebSocket = require('ws');

const ws = new WebSocket.Server({port: 8080});

ws.on('open', () => {
    console.log('Open!');
});

ws.on('connection', socket => {
    console.log('connected!');
    socket.on('message', message => {
        console.log('>>', message);

        socket.send(message);
    });
});