#!/home/ec2-user/.nvm/versions/node/v17.1.0/bin/node

'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello Node.js Sample 2!\n . env vars' + JSON.stringify(process.env))
});

var port = process.env.PORT||PORT;
app.listen(port);
console.log(`Running on http://${HOST}:${PORT}`);

console.log(`env vars:${JSON.stringify(process.env)}`);
