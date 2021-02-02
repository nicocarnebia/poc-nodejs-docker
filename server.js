const express = require('express');

const PORT = 8080;
const HOST = '0.0.0.0';

const app = express();
app.get('/', (req, res) => {
  res.send('Hello POC!');
});

app.listen(PORT, HOST);
console.log(`Host:${HOST} Port:${PORT}`);
