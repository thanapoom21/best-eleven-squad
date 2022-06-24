const { Client } = require("pg");
const express = require("express");
const app = express();
const port = 8080;

const client = new Client({
  password: "root",
  user: "root",
  host: "postgres",
});

app.use(express.static("public"));

app.get("/", async (req, res) => {
  res.setHeader("Content-Type", "text/html");
  res.status(200);
  res.send(
    "<div><h1>Hello World, this is the heading!!!</h1></br><p>This is a paragraph and it should be smaller.</p><div>"
  );
});

app.get("/players", async (req, res) => {
  const results = await client
    .query("SELECT * FROM players")
    .then((payload) => {
      return payload.rows;
    })
    .catch(() => {
      throw new Error("Player query failed!!!");
    });
  res.setHeader("Content-Type", "application/json");
  res.status(200);
  res.send(JSON.stringify(results));
});

(async () => {
  await client.connect();
  app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
  });
})();
