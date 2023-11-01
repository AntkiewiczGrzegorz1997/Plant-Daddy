const pgp = require('pg-promise')();
const fs = require('fs');
require('dotenv').config();

function isRunningInsideDocker() {
  return fs.existsSync('/.dockerenv');
}
let connectionString;

if (isRunningInsideDocker()) {
  connectionString = `postgres://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@db-new:5432/${process.env.DB_NAME}`;
} else {
  const username = 'postgres1';
  const password = 'postgres';
  const dbName = 'plantasia1';
  const dbHost = '127.0.0.1';
  connectionString = `postgres://${username}:${password}@${dbHost}:5433/${dbName}`;
}

const db = pgp(connectionString);

module.exports = {
  db,
  pgp,
  connectionString,
};
