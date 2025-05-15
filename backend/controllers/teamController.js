const Team = require('../models/Team');
exports.createTeam = async (req, res) => {
  const team = await Team.create(req.body);
  res.json(team);
};

exports.getTeams = async (req, res) => {
  const teams = await Team.find({ user: req.query.user }).populate('match');
  res.json(teams);
};