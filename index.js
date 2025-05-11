const mysql = require('mysql2');
const fs = require('fs');
const path = './mec-sql-latest-db.sql'; // Path to your SQL file

// Create MySQL connection
const connection = mysql.createConnection({
  host: '10.99.112.32',
  user: 'root',
  password: '$d1cj6,X57/kpBQUj#878$9Git',
  database: 'mec',
  multipleStatements: true
});

// Connect and run SQL script
connection.connect((err) => {
  if (err) {
    console.error('❌ Error connecting to MySQL:', err.message);
    return;
  }
  console.log('✅ Connected to MySQL database.');

  // Check if SQL file exists
  if (!fs.existsSync(path)) {
    console.error(`❌ SQL file not found at path: ${path}`);
    connection.end();
    return;
  }

  // Read and execute SQL file
  const sql = fs.readFileSync(path, 'utf8');

  connection.query(sql, (err, results) => {
    if (err) {
      console.error('❌ Error executing SQL script:', err.message);
    } else {
      console.log('✅ SQL script executed successfully.');
    }
    connection.end();
  });
});
