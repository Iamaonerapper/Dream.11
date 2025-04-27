const express = require('express');
const { getOrCreateUser } = require('../controllers/userController');
const router = express.Router();
router.post('/login', getOrCreateUser);
module.exports = router;