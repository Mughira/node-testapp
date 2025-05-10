const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: '10.99.112.34',     // or your DB host
  user: 'root',          // your DB username
  password: '$d1cj6,X57/kpBQUj#878$9',  // your DB password
  database: 'mec-prtal-tst'       // your DB name
});

connection.connect((err) => {
  if (err) {
    console.error('❌ Error connecting to MySQL:', err.message);
    return;
  }
  console.log('✅ Connected to MySQL database.');
  connection.end();
});
