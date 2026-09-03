const express = require("express");

const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.send(`
    <!DOCTYPE html>
    <html>
    <head><title>Hello World - Node.js</title></head>
    <body style="text-align: center; margin-top: 50px; font-family: sans-serif;">
      <h1>Hello World from Node.js (Express) + Docker!</h1>
    </body>
    </html>
  `);
});

app.listen(PORT, () => {
  console.log(`Node.js server running on port ${PORT}`);
});
