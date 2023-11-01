'use strict';
const router = require('./router.js');
const express = require('express');
const cors = require('cors');
const { db, pgp } = require('./models/db.js');

const app = express();

const PORT = 3000;

const corsConfig = {
  origin: 'http://localhost:3001',
  credentials: true,
};

const deploymentCorsConfig = {
  origin: 'http:/18.159.59.226:3001',
  credentials: true,
};

app.use(cors(corsConfig));
app.use(cors(deploymentCorsConfig));
app.use(express.json());

app.use(router);

app.get('*', (req, res) => {
  res.status(404).send('Sorry, not found 😞');
});

(async function bootstrap() {
  setTimeout(async function () {
    try {
      // Connect to the database
      await db.connect();
      app.listen(PORT);
      console.log(`Server running at http://localhost:${PORT}`);
    } catch (error) {
      console.error('Server startup error:', error);
    }
  }, 5000);
})();
