const sqlite3 = require('sqlite3').verbose();

//open db
let db = new sqlite3.Database('./..//DB/pokedex.sqlite');

let sql = 'SELECT identifier Identifier FROM pokemon';

db.all(sql, [], (err, rows) => {
  if (err) {
    throw err;
  }
  rows.forEach((row) => {
    console.log(row.Identifier);
  });
});
db.close();
