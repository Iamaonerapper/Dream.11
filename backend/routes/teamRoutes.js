const express = require('express');
const { createTeam, getTeams } = require('../controllers/teamController');
const router = express.Router();
router.get('/', getTeams);
router.post('/', createTeam);
module.exports = router;