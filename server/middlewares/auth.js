const jwt = require('jsonwebtoken');

const { db } = require('../models/db');

const SECRET_KEY = process.env.SECRET_KEY || 'lalala this isnt secure';

const authMiddleware = async (req, res, next) => {
  // extract token from auth headers
  const authHeaders = req.headers['authorization'];
  if (!authHeaders) return res.sendStatus(403);

  const token = authHeaders.split(' ')[1];

  try {
    // verify & decode token payload,
    const { _id } = jwt.verify(token, SECRET_KEY);
    // attempt to find user object and set to req

    db.oneOrNone('SELECT * FROM public.users WHERE user_id = $1', [_id])
      .then((user) => {
        if (user) {
          req.user = user;
          next();
        } else {
          res.sendStatus(401); // User not found
        }
      })
      .catch((error) => {
        res.sendStatus(500); // Internal server error
      });
  } catch (e) {
    res.sendStatus(401); // Token verification failed
  }
};

module.exports = authMiddleware;
