var http = require('http');
var url = require('url')

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    
    if (req.url == '/home') {
        res.write("<h1>Welcome to the homepage!</h1>");
    } else if (req.url == '/getData') {
        res.write("<p>Here is some data.</p>");
    } else {
        res.write("<h1>404 Error: Page not found</h1>");
    }
    
    res.end();
}).listen(8080);