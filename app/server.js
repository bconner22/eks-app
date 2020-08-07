'use strict';

const express = require('express');
const { exec } = require("child_process");
// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
const date = Math.floor(new Date() / 1000)
app.get('/', (req, res) => {
  return res.json({ message:  'Automate all the things!',
                    timestamp: date });
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);