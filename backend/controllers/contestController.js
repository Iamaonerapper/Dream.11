const Contest = require('../models/Contest');
exports.createContest = async (req, res) => {
  const contest = await Contest.create(req.body);
  res.json(contest);
};

exports.getContests = async (req, res) => {
  const contests = await Contest.find({ match: req.query.match }).populate('participants');
  res.json(contests);
};