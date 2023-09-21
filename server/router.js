'use strict';
//Imports
const router = require('express').Router();

const {
  getAllPlants,
  getUserPlants,
  addUserPlant,
  getAllPlantNames,
} = require('./controllers/controller');

//Instance

//Routes
router.get('/profile/:user_id', getUserPlants);
router.get('/plants', getAllPlants);
router.post('/profile/addnewplant', addUserPlant);
router.get('/plantnames', getAllPlantNames);

// Exports

module.exports = router;
