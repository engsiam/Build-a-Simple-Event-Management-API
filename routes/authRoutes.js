
const express = require('express');
const authController = require('../controllers/authController');
const router = express.Router();

// Register Route
router.post('/register', authController.registerUser);

// Login Route
router.post('/login', authController.loginUser);

module.exports = router;
