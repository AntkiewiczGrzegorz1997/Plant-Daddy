'use strict';
//Imports
const router = require('express').Router();
const authMiddleware = require('./middlewares/auth');

const {
  getAllPlants,

  getAllPlantNames,
  getPlantInfo,

  getPlantImgs,
} = require('./controllers/controller');

const userController = require('./controllers/user');

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
router.get('/profile', authMiddleware, userController.profile);
router.get('/profile/username', authMiddleware, userController.username);
router.post('/uploadImg', authMiddleware, userController.addImg);
router.put('/profile/deleteImg', authMiddleware, userController.deleteImg);

// Exports

module.exports = router;
