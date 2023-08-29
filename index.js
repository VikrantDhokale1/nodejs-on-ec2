var http = require('http');

//create a server object:
http.createServer(function (req, res) {
  res.write('i'm joseph marino'); //write a response to the client
  res.end(); //end the response
}).listen(3000); //the server object listens on port 4000
