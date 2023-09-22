'use strict';
//Imports
const router = require('express').Router();
const authMiddleware = require('./middlewares/auth');

const {
  getAllPlants,
  getUserPlants,
  addUserPlant,
  getAllPlantNames,
  getPlantInfo,
  addImg,
} = require('./controllers/controller');

const userController = require('./controllers/user');

//Instance

//Routes
router.get('/plantnames', getAllPlantNames);

router.get('/profile/:user_id', getUserPlants);
router.get('/plants', getAllPlants);
router.post('/profile/addnewplant', addUserPlant);

//router.post('/profile/addnewplant', authMiddleware, addUserPlant);

router.get('/plantinfo/:plantName', getPlantInfo);

//Login and registration
router.post('/register', userController.create);
router.post('/login', userController.login);

// router.get('/profile', authMiddleware, userController.profile);
// router.post('/uploadImg', authMiddleware, addImg);

// Exports

module.exports = router;
