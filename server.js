const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;
const host = process.env.HOST || '0.0.0.0';

app.use('/', express.static(path.join(__dirname, 'client')))

app.listen(port, host, () => console.log(`Running on ${host}:${port}`));
