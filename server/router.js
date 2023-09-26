'use strict';
//Imports
const router = require('express').Router();
const authMiddleware = require('./middlewares/auth');

const {
  getAllPlants,
  getUserPlants,
  getAllPlantNames,
  getPlantInfo,
  addImg,
  getPlantImgs,
} = require('./controllers/controller');

const userController = require('./controllers/user');

//Instance

//Routes
router.get('/plantnames', getAllPlantNames);

router.get('/plants', getAllPlants);
router.post(
  '/profile/addnewplant',
  authMiddleware,
  userController.addUserPlant
);

router.get('/plantinfo/:plantName', getPlantInfo);

//Login and registration
router.post('/register', userController.create);
router.post('/login', userController.login);

router.get('/imgs/:plant_id', getPlantImgs);
router.post('/uploadImg', addImg); //delete when authentification present

router.get('/profile', authMiddleware, userController.profile);
router.get('/profile/username', authMiddleware, userController.username);

router.put('/profile/deleteImg', userController.deleteImg);

//router.post('/uploadImg', authMiddleware, addImg);

// Exports

module.exports = router;
