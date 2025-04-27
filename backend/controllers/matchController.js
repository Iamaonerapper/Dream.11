const Match = require('../models/Match');

exports.getMatches = async (req, res) => {
  const matches = await Match.find();
  res.json(matches);
};

exports.addMatch = async (req, res) => {
  const match = await Match.create(req.body);
  res.json(match);
};