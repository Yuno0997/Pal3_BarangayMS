const mysql = require('mysql2/promise');
async function get() {
  const connection = await mysql.createConnection({
    host: 'hayabusa.proxy.rlwy.net',
    port: 44933,
    user: 'root',
    password: 'xFxLHxJSHKQokeqCeLLdSDTQSavuzrzE',
    database: 'railway'
  });
  const [rows] = await connection.execute('SHOW TABLES');
  console.log(rows);
  await connection.end();
}
get();
