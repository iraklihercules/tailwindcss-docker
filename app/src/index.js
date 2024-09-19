const http = require('http');
const fs = require('fs');

const host = '0.0.0.0';
const port = 8080;

const httpServer = http.createServer(httpHandler);

httpServer.listen(port, host, () => {
    console.log(`HTTP server running at http://${host}:${port}/`);
});

function httpHandler(req, res) {
    let filename = '/' !== req.url ? req.url : '/index.html';
    fs.readFile('/app/src' + filename, function (err, data) {
        if (null !== err) {
            console.log(err);
        } else {
            res.end(data);
        }
    });
}
