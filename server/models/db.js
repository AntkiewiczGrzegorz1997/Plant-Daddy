const pgp = require('pg-promise')();
const username = 'postgres';
const password = 'postgres';
const dbName = 'plantasia';

const connectionString = `postgres://${username}:${password}@localhost:5432/${dbName}`;

// Create a PostgreSQL database instance
const db = pgp(connectionString);

module.exports = {
  db,
  pgp,
  connectionString,
};
