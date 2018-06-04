const net = require('net');

var clientList = [];

var server = net.createServer( socket => {
   // Connection Event
   console.log('Client Connected from : ', socket.remoteAddress);

   sendColor();

   function sendColor() {
      let random = Math.random() * 10;

      setTimeout( () => {
         let r = Math.floor(Math.random() * 255);
         let g = Math.floor(Math.random() * 255);
         let b = Math.floor(Math.random() * 255);
   
         let color = { red: r, green: g, blue : b};
         let data = JSON.stringify(color);
         socket.write(data);

         sendColor();
      }, random * 1000);
   }

   socket.on('data', (data) => {
   });

   socket.on('end', () => {
      console.log('Connection end')
   });
});

server.listen(3000);