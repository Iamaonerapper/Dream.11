const express = require('express');
const { getContests, createContest } = require('../controllers/contestController');
const router = express.Router();
router.get('/', getContests);
router.post('/', createContest);
module.exports = router;