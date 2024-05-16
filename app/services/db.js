require("dotenv").config();

const mysql = require('mysql2/promise');

const config = {
  db: { 
    MYSQL_HOST:localhost,
    MYSQL_USER:admin,
    MYSQL_PASS:password,
    MYSQL_ROOT_PASSWORD:password,
    MYSQL_DATABASE:sd2-db,
    MYSQL_ROOT_USER:root,
    DB_CONTAINER:db,
    DB_PORT:3306,
    waitForConnections: true,
    connectionLimit: 2,
    queueLimit: 0,
  },
};
  
const pool = mysql.createPool(config.db);

// Utility function to query the database
async function query(sql, params) {
  const [rows, fields] = await pool.execute(sql, params);

  return rows;
}

module.exports = {
  query,
}