const pgp = require('pg-promise')();
require('dotenv').config();
const username = 'postgres1';
const password = 'postgres';
const dbName = 'plantasia1';
const dbHost = '127.0.0.1';

// const connectionString = `postgres://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@db-new:5432/${process.env.DB_NAME}`;
const connectionString = `postgres://${username}:${password}@${dbHost}:5433/${dbName}`;

// Create a PostgreSQL database instance
const db = pgp(connectionString);

module.exports = {
  db,
  pgp,
  connectionString,
};
