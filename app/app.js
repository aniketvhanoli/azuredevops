// app.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello from AWS deployed via Azure DevOps 🚀');
});

app.listen(3000, () => console.log('App running on port 3000'));

