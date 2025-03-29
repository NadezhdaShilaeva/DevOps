// server.js
const express = require('express');
const os = require('os');

const app = express();
const port = process.env.PORT || 8080;
const hostname = os.hostname();

app.get('/', (req, res) => {
  res.send(`Hello from Anna and Nadezhda!`);
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
