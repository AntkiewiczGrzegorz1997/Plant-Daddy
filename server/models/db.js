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

// // Example: Select all rows from a table
// db.any('SELECT * FROM public.plants')
//   .then((data) => {
//     console.log(data);
//   })
//   .catch((error) => {
//     console.error('Error:', error);
//   })
//   .finally(() => {
//     pgp.end();
//   });
// const user_ID = 1;
// db.any('SELECT * FROM User_Plants WHERE user_ID = $1', [user_ID])
//   .then((data) => {
//     console.log(data);
//     //res.status(200).json(plants);
//   })
//   .catch((error) => {
//     console.error('Error fetching user plants:', error);
//     //res.status(500).json({ error: 'Internal Server Error' });
//   })
//   .finally(() => {
//     pgp.end();
//   });
// pgp.end();
