const { db, pgp } = require('../models/db');

//const mongoose = require('./index');

function getAllPlants(req, res) {
  db.any('SELECT * FROM public.plants')
    .then((data) => {
      console.log(data);
      res.status(200).json(data);
    })
    .catch((error) => {
      console.error('Error fetching plants:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    });
}

function getAllPlantNames(req, res) {
  db.any('SELECT full_name FROM public.plants')
    .then((data) => {
      res.status(200).json(data);
    })
    .catch((error) => {
      console.error('Error fetching plant names:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    });
}

function getUserPlants(req, res) {
  const user_ID = req.params.user_id; // body or params - lets see
  //const user_ID = 1;
  db.any('SELECT * FROM User_Plants WHERE user_ID = $1', [user_ID])
    .then((data) => {
      res.status(200).json(data);
    })
    .catch((error) => {
      console.error('Error fetching user plants:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    });
}

function getPlantInfo(req, res) {
  const plantName = req.params.plantName; // body or params - lets see
  //const user_ID = 1;
  db.any('SELECT * FROM Plants WHERE full_name = $1', [plantName])
    .then((data) => {
      res.status(200).json(data[0]);
    })
    .catch((error) => {
      console.error('Error fetching plant info', error);
      res.status(500).json({ error: 'Internal Server Error' });
    });
}

async function addUserPlant(req, res) {
  const {
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
  } = req.body;

  console.log(user_ID);

  try {
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
      `INSERT INTO User_Plants (user_ID, plant_ID, ID, plant_name, full_name, scientific_name, plant_description, plant_size, age, watering, sunlight, icon_ID)
      VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)`,
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
      ]
    ).then(res.status(200).json({ message: 'Plant added successfully' }));
  } catch (error) {
    console.error('Error adding plant:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
}

async function addImg(req, res) {
  const { user_ID, plant_ID, image_url } = req.body;

  try {
    // Insert a new plant into User_Plants table
    db.none(
      `INSERT INTO uploaded_images (user_ID, plant_ID,  image_url)
      VALUES ($1, $2, $3)`,
      [user_ID, plant_ID, image_url]
    ).then(res.status(200).json({ message: 'Image added successfully' }));
  } catch (error) {
    console.error('Error adding img', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
}
module.exports = {
  getAllPlants,
  getUserPlants,
  addUserPlant,
  getAllPlantNames,
  getPlantInfo,
  addImg,
};
