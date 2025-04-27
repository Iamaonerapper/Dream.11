const mongoose = require('mongoose');
const teamSchema = new mongoose.Schema({
  user: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
  match: { type: mongoose.Schema.Types.ObjectId, ref: 'Match' },
  players: Array,
  captain: String,
  viceCaptain: String,
  points: { type: Number, default: 0 },
});
module.exports = mongoose.model('Team', teamSchema);