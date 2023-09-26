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

// function getUserPlants(req, res) {
//   const user_ID = req.params.user_id; // body or params - lets see
//   //const user_ID = 1;
//   db.any('SELECT * FROM User_Plants WHERE user_ID = $1', [user_ID])
//     .then((data) => {
//       res.status(200).json(data);
//     })
//     .catch((error) => {
//       console.error('Error fetching user plants:', error);
//       res.status(500).json({ error: 'Internal Server Error' });
//     });
// }

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

function getPlantImgs(req, res) {
  const plantId = req.params.plant_id; // body or params - lets see
  //const user_ID = 1;
  db.any('SELECT * FROM public.uploaded_images WHERE plant_id = $1', [plantId])
    .then((data) => {
      res.status(200).json(data);
    })
    .catch((error) => {
      console.error('Error fetching images', error);
      res.status(500).json({ error: 'Internal Server Error' });
    });
}

module.exports = {
  getAllPlants,
  //getUserPlants,
  getAllPlantNames,
  getPlantInfo,

  getPlantImgs,
};
