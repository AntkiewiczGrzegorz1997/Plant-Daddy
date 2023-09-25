const bcrypt = require('bcrypt');
const { Pool } = require('pg');
const { db, pgp, connectionString } = require('../models/db');

const pool = new Pool({
  connectionString: connectionString,
});

const jwt = require('jsonwebtoken');
const SECRET_KEY = process.env.SECRET_KEY || 'lalala this isnt secure';

const create = async (req, res) => {
  const { user_id, email, password, firstName, lastName, username } = req.body;
  const user = await db.oneOrNone(
    'SELECT * FROM public.users WHERE email = $1',
    [email]
  );
  if (user)
    return res
      .status(409)
      .send({ error: '409', message: 'User already exists' });
  try {
    if (password === '') throw new Error();
    const hash = await bcrypt.hash(password, 10);

    // SQL query to insert a new user into the users table
    const insertUserQuery = `
      INSERT INTO public.users (user_id, email, password, firstname, lastname, username)
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING user_id
      `;

    pool
      .query(insertUserQuery, [
        user_id,
        email,
        hash,
        firstName,
        lastName,
        username,
      ])
      .then((result) => {
        const { user_id } = result.rows[0];
        // Generate an access token
        const accessToken = jwt.sign({ _id: user_id }, SECRET_KEY);
        res.status(201).send({ accessToken });
      });
  } catch (error) {
    res.status(400).send({ error, message: 'Could not create user' });
  }
};

const login = async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await db.oneOrNone(
      'SELECT * FROM public.users WHERE email = $1',
      [email]
    );

    const validatedPass = await bcrypt.compare(password, user.password);
    if (!validatedPass) throw new Error();
    const accessToken = jwt.sign({ _id: user.user_id }, SECRET_KEY);
    res.status(200).send({ accessToken });
  } catch (error) {
    res
      .status(401)
      .send({ error: '401', message: 'Username or password is incorrect' });
  }
};

const profile = async (req, res) => {
  try {
    // const { user_id, firstName, lastName } = req.user;
    // const user = { user_id, firstName, lastName };
    user_ID = req.user.user_id;

    //const user_ID = 1;
    pool
      .query('SELECT * FROM User_Plants WHERE user_ID = $1', [
        parseInt(user_ID),
      ])
      .then((data) => {
        return res.status(200).json(data);
      })
      .catch((error) => {
        console.error('Error fetching user plants:', error);
        res.status(500).json({ error: 'Internal Server Error' });
      });
  } catch {
    res.status(404).send({ error, message: 'Resource not found' });
  }
};

const username = async (req, res) => {
  try {
    // const { user_id, firstName, lastName } = req.user;
    // const user = { user_id, firstName, lastName };
    user_ID = req.user.user_id;

    //const user_ID = 1;
    pool
      .query('SELECT username FROM users WHERE user_ID = $1', [
        parseInt(user_ID),
      ])
      .then((data) => {
        return res.status(200).json(data);
      })
      .catch((error) => {
        console.error('Error fetching user plants:', error);
        res.status(500).json({ error: 'Internal Server Error' });
      });
  } catch {
    res.status(404).send({ error, message: 'Resource not found' });
  }
};

async function addUserPlant(req, res) {
  const {
    plant_ID,
    ID,
    plant_name,
    full_name,
    scientific_name,
    plant_description,
    plant_size,
    age,
    watering,
    sunlight,
    icon_ID,
    image_url,
  } = req.body;

  try {
    user_ID = req.user.user_id;

    const existingPlant = await db.oneOrNone(
      'SELECT * FROM User_Plants WHERE user_ID = $1 AND plant_ID = $2',
      [user_ID, plant_ID]
    );

    if (existingPlant) {
      return res
        .status(409)
        .json({ error: 'Plant already exists for the user' });
    }
    // Insert a new plant into User_Plants table
    db.none(
      `INSERT INTO User_Plants (user_ID, plant_ID, ID, plant_name, full_name, scientific_name, plant_description, plant_size, age, watering, sunlight, icon_ID, image_url)
      VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)`,
      [
        user_ID,
        plant_ID,
        ID,
        plant_name,
        full_name,
        scientific_name,
        plant_description,
        plant_size,
        age,
        watering,
        sunlight,
        icon_ID,
        image_url,
      ]
    ).then(res.status(200).json({ message: 'Plant added successfully' }));
  } catch (error) {
    console.error('Error adding plant:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
}

const logout = (req, res) => {
  // REMOVE-START
  // delete the token client side upon logout.
  // you would invalidate the token here.
  // REMOVE-END
};

module.exports = { create, login, profile, logout, addUserPlant, username };
