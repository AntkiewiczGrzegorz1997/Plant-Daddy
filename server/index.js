// Imports
'use strict';
const router = require('./router.js');
const express = require('express');
const cors = require('cors');
const { db, pgp } = require('./models/db.js');

const app = express();

const PORT = 3000;

// const corsConfig = {
//   origin: 'http://localhost:3000',
//   credentials: true,
// };

//app.use(express.static(conf.clientPath));
// app.use(cors(corsConfig));
app.use(cors());
app.use(express.json());

app.use(router);

app.get('*', (req, res) => {
  res.status(404).send('Sorry, not found 😞');
});

//Launch with IFFY

(async function bootstrap() {
  try {
    // Connect to the database
    await db.connect();
    app.listen(PORT);
    console.log(`Server running at http://localhost:${PORT}`);
  } catch (error) {
    console.error('Server startup error:', error);
  }
})();
